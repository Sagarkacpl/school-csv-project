<?php
include "db.php"; // DB connection

header('Content-Type: application/json');

// Get month parameter (default = January)
$month = $_POST['month'] ?? '01';

try {
    // Detect column type of `month`
    $colInfo = mysqli_query($db, "SHOW COLUMNS FROM inventory LIKE 'month'");
    $col = mysqli_fetch_assoc($colInfo);
    $colType = $col['Type'] ?? '';

    // Build query depending on type
    if (stripos($colType, 'date') !== false) {
        $sql = "SELECT items, category, SUM(inventory_value) as total_value 
                FROM inventory 
                WHERE MONTH(month) = '$month' AND deleted_status = '0' 
                GROUP BY category, items";
    } elseif (stripos($colType, 'varchar') !== false || stripos($colType, 'char') !== false) {
        $sql = "SELECT items, category, SUM(inventory_value) as total_value 
                FROM inventory 
                WHERE RIGHT(month,2) = LPAD('$month', 2, '0') AND deleted_status = '0' 
                GROUP BY category, items";
    } else {
        $sql = "SELECT items, category, SUM(inventory_value) as total_value 
                FROM inventory 
                WHERE deleted_status = '0' 
                GROUP BY category, items";
    }

    $result = mysqli_query($db, $sql);

    if (!$result) {
        throw new Exception("Database query failed: " . mysqli_error($db));
    }

    $allocationData = [];
    $totalValue = 0;

    // For Sunburst chart
    $labels = [];
    $parents = [];
    $values = [];

    while ($row = mysqli_fetch_assoc($result)) {
        $category = $row['category'];
        $item = $row['items'];
        $value = floatval($row['total_value']);

        // Build allocation summary per category
        if (!isset($allocationData[$category])) {
            $allocationData[$category] = 0;
        }
        $allocationData[$category] += $value;
        $totalValue += $value;

        // Sunburst children
        $labels[] = $item;
        $parents[] = $category;
        $values[] = $value;
    }

    // Ensure we always return top-level categories
    $categories = ['Food Inventory', 'Beverage Inventory', 'Other Inventory'];
    $formattedData = [];
    $catLabels = [];
    $catParents = [];
    $catValues = [];

    foreach ($categories as $category) {
        $value = isset($allocationData[$category]) ? $allocationData[$category] : 0;
        $formattedData[$category] = [
            'value' => $value,
            'formatted' => number_format($value, 2),
            'percentage' => $totalValue > 0 ? round(($value / $totalValue) * 100, 1) : 0
        ];

        // Add top-level categories to Sunburst
        $catLabels[] = $category;
        $catParents[] = ""; // root node
        $catValues[] = $value;
    }

    // Merge categories + items for Sunburst
    $sunburstData = [
        'labels' => array_merge($catLabels, $labels),
        'parents' => array_merge($catParents, $parents),
        'values' => array_merge($catValues, $values),
    ];

    $response = [
        "status" => "success",
        "data" => $formattedData,
        "sunburst" => $sunburstData,
        "total" => $totalValue,
        "month" => $month,
        "message" => $totalValue > 0 
            ? "Inventory allocation data loaded successfully" 
            : "No inventory data found for this month"
    ];

} catch (Exception $e) {
    $response = [
        "status" => "error",
        "message" => $e->getMessage()
    ];
}

echo json_encode($response);
?>
