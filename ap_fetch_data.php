<?php
include "db.php"; // apna DB connection file

$month = $_POST['month'] ?? '';

$ageGroups = [
    "<30"      => "ageing_days < 30",
    "30-45"    => "ageing_days BETWEEN 30 AND 45",
    "45-60"    => "ageing_days BETWEEN 45 AND 60",
    "60-90"    => "ageing_days BETWEEN 60 AND 90",
    "90-120"   => "ageing_days BETWEEN 90 AND 120",
    "120-150"  => "ageing_days BETWEEN 120 AND 150"
];

$data = [];

foreach ($ageGroups as $condition) {
    $sql = "SELECT AVG(ageing_days) as avg_delay FROM ap_ageing WHERE MONTH(month) = '$month' AND deleted_status = 0 AND $condition";
    $result = mysqli_query($db, $sql);
    $row = mysqli_fetch_assoc($result);
    $data[] = $row['avg_delay'] ? round($row['avg_delay'], 2) : 0;
}

echo json_encode($data);
?>
