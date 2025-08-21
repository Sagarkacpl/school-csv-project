<?php
include "db.php"; // Your DB connection file
header('Content-Type: application/json');

// Get month parameter
$month = isset($_POST['month']) ? mysqli_real_escape_string($db, $_POST['month']) : '01';

try {
    // Define age groups for inventory ageing
    $ageGroups = [
        'Upto 3 Months' => 'ageing_days <= 90',
        '4 to 6 Months' => 'ageing_days BETWEEN 91 AND 180',
        '7 to 9 Months' => 'ageing_days BETWEEN 181 AND 270',
        '10 to 12 Months' => 'ageing_days BETWEEN 271 AND 365',
        'Beyond 12' => 'ageing_days > 365'
    ];
    
    $ageingData = [];
    
    foreach ($ageGroups as $label => $condition) {
        $sql = "SELECT SUM(inventory_value) as total_value 
                FROM inventory 
                WHERE MONTH(month) = '$month' AND deleted_status = '0' AND $condition";
        
        $result = mysqli_query($db, $sql);
        
        if (!$result) {
            throw new Exception("Database query failed: " . mysqli_error($db));
        }
        
        $row = mysqli_fetch_assoc($result);
        $value = $row['total_value'] ? floatval($row['total_value']) : 0;
        
        $ageingData[$label] = [
            'value' => $value,
            'formatted' => '$' . number_format($value, 0)
        ];
    }
    
    $response = [
        "status" => "success",
        "data" => $ageingData,
        "month" => $month,
        "message" => "Inventory ageing data loaded successfully"
    ];
    
} catch (Exception $e) {
    $response = [
        "status" => "error",
        "message" => $e->getMessage()
    ];
}

echo json_encode($response);
