<?php
include "db.php";

$currentMonth = $_POST['month']; // like 08
$currentYear = date("Y");

$data = [];
$labels = [];

// last 6 months loop
for ($i = 5; $i >= 0; $i--) {
    $monthNum = date("m", strtotime("-$i month", strtotime("$currentYear-$currentMonth-01")));
    $monthLabel = date("M", strtotime("-$i month", strtotime("$currentYear-$currentMonth-01")));

    $sql = "SELECT account_code, amount 
            FROM trial_balance 
            WHERE MONTH(month) = '$monthNum' AND YEAR(month) = '$currentYear' 
              AND deleted_status = '0'";
    $result = $db->query($sql);

    $totalAsset = 0;
    $totalLiability = 0;

    while ($row = $result->fetch_assoc()) {
        $accCode = $row['account_code'];
        $amount = (float)$row['amount'];

        $accRes = $db->query("SELECT sub_category  
                              FROM accounts_code 
                              WHERE accounts_code='$accCode' 
                              AND deleted_status='0'");
        $accRow = $accRes->fetch_assoc();

        if ($accRow['sub_category'] == "Current Assets") {
            $totalAsset += $amount;
        } elseif ($accRow['sub_category'] == "Current Liabilities") {
            $totalLiability += $amount;
        }
    }

    $workingCapital = $totalAsset - $totalLiability;

    $labels[] = $monthLabel;
    $data['working_capital'][] = $workingCapital;
    $data['assets'][] = $totalAsset;
    $data['liabilities'][] = $totalLiability;
}

echo json_encode([
    "status" => "success",
    "labels" => $labels,
    "datasets" => $data
]);
