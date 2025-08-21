<?php
include "db.php"; // Your DB connection file

$month = $_POST['month'] ?? '';

// Age groups configuration matching your existing structure
$ageGroups = [
    "< 30 Days"    => "ageing_days < 30",
    "30-45 Days"   => "ageing_days BETWEEN 30 AND 45", 
    "45-60 Days"   => "ageing_days BETWEEN 45 AND 60",
    "60-90 Days"   => "ageing_days BETWEEN 60 AND 90",
    "90-120 Days"  => "ageing_days BETWEEN 90 AND 120",
    "> 120 Days"   => "ageing_days > 120"
];

try {
    $values = [];
    $info = [];
    
    // Get chart values (counts for each age group)
    foreach ($ageGroups as $label => $condition) {
        $sql = "SELECT COUNT(*) as count FROM ar_ageing WHERE MONTH(month) = '$month' AND deleted_status = 0 AND $condition";
        $result = mysqli_query($db, $sql);
        
        if (!$result) {
            throw new Exception("Database query failed: " . mysqli_error($db));
        }
        
        $row = mysqli_fetch_assoc($result);
        $values[] = (int)($row['count'] ?? 0);
    }
    
    // Get detailed info for each age group (balance and account details)
    foreach ($ageGroups as $label => $condition) {
        // Get total balance for this age group
        $balanceSQL = "SELECT SUM(balance_books) as total_balance FROM ar_ageing WHERE MONTH(month) = '$month' AND deleted_status = 0 AND $condition";
        $balanceResult = mysqli_query($db, $balanceSQL);
        
        if (!$balanceResult) {
            throw new Exception("Balance query failed: " . mysqli_error($db));
        }
        
        $balanceRow = mysqli_fetch_assoc($balanceResult);
        $totalBalance = $balanceRow['total_balance'] ?? 0;
        
        // Get account names for this age group (limit to avoid too long strings)
        $accountSQL = "SELECT DISTINCT creditor_name FROM ar_ageing WHERE MONTH(month) = '$month' AND deleted_status = 0 AND $condition LIMIT 3";
        $accountResult = mysqli_query($db, $accountSQL);
        
        if (!$accountResult) {
            throw new Exception("Account query failed: " . mysqli_error($db));
        }
        
        $accounts = [];
        while ($accountRow = mysqli_fetch_assoc($accountResult)) {
            if (!empty($accountRow['creditor_name'])) {
                $accounts[] = $accountRow['creditor_name'];
            }
        }
        
        // Format balance
        $formattedBalance = $totalBalance;
        
        // Format account string
        $accountString = empty($accounts) ? "No accounts" : "Account: " . implode(', ', $accounts);
        if (count($accounts) > 2) {
            $accountString .= " & others";
        }
        
        $info[] = [
            'balance' => $formattedBalance,
            'account' => $accountString
        ];
    }
    
    // Determine default index (highest value or middle if all are similar)
    $maxValue = max($values);
    $defaultIndex = array_search($maxValue, $values);
    
    // If max value is 0 or not found, default to middle index
    if ($defaultIndex === false || $maxValue == 0) {
        $defaultIndex = floor(count($values) / 2);
    }
    
    $response = [
        "status" => "success",
        "values" => $values,
        "info" => $info,
        "defaultIndex" => $defaultIndex,
        "month" => $month,
        "message" => "AR Data loaded successfully"
    ];
    
} catch (Exception $e) {
    // Error response
    $response = [
        "status" => "error",
        "message" => $e->getMessage()
    ];
}

// Set JSON header and output
header('Content-Type: application/json');
echo json_encode($response);
?>