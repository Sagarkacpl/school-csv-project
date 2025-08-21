<?php
include "db.php";

header('Content-Type: application/json');

// Get month parameter
$month = isset($_POST['month']) ? mysqli_real_escape_string($db, $_POST['month']) : '01';

try {
    // Fetch inventory data
    $sql = "SELECT `id`, `month`, `items`, `price`, `costs`, `count`, `inventory_value`, `category`, `ageing_days`, `warehouse`, `deleted_status`, `created_at` 
            FROM `inventory` 
            WHERE MONTH(month) = '$month' AND deleted_status = '0'";
    
    $result = mysqli_query($db, $sql);
    
    if (!$result) {
        throw new Exception("Database query failed: " . mysqli_error($db));
    }
    
    $inventoryData = [];
    $categoryTotals = [
        'Food' => 0,
        'Beverage' => 0,
        'Other' => 0
    ];
    
    $ageingData = [
        'Upto 3 Months' => 0,
        '4 to 6 Months' => 0,
        '7 to 9 Months' => 0,
        '10 to 12 Months' => 0,
        'Beyond 12' => 0
    ];
    
    while ($row = mysqli_fetch_assoc($result)) {
        $inventoryData[] = $row;
        
        // Calculate category totals
        $category = $row['category'];
        $value = floatval($row['inventory_value']);
        
        if (isset($categoryTotals[$category])) {
            $categoryTotals[$category] += $value;
        } else {
            $categoryTotals['Other'] += $value;
        }
        
        // Calculate ageing data
        $ageingDays = intval($row['ageing_days']);
        if ($ageingDays <= 90) {
            $ageingData['Upto 3 Months'] += $value;
        } elseif ($ageingDays <= 180) {
            $ageingData['4 to 6 Months'] += $value;
        } elseif ($ageingDays <= 270) {
            $ageingData['7 to 9 Months'] += $value;
        } elseif ($ageingDays <= 365) {
            $ageingData['10 to 12 Months'] += $value;
        } else {
            $ageingData['Beyond 12'] += $value;
        }
    }
    
    $response = [
        "status" => "success",
        "data" => $inventoryData,
        "categoryTotals" => $categoryTotals,
        "ageingData" => $ageingData,
        "month" => $month,
        "message" => "Inventory data loaded successfully"
    ];
    
} catch (Exception $e) {
    $response = [
        "status" => "error",
        "message" => $e->getMessage()
    ];
}

echo json_encode($response);