<?php
include "db.php"; // connection file

$month = $_POST['month']; // like 01, 02

// Trial balance से उस महीने का data
$sql = "SELECT account_code, account, amount 
        FROM trial_balance 
        WHERE MONTH(month) = '$month' AND deleted_status = '0'";
$result = $db->query($sql);

$totalAsset = 0;
$totalLiability = 0;

while ($row = $result->fetch_assoc()) {
    $accCode = $row['account_code'];
    $amount = (float)$row['amount'];

    // Accounts_code से sub_category निकालना
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

echo json_encode([
    "status" => "success",
    "month" => $month,
    "assets" => $totalAsset,
    "liabilities" => $totalLiability,
    "working_capital" => $workingCapital
]);
