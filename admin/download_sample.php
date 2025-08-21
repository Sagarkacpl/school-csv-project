<?php
include 'include/dbconn.php';

if (!isset($_GET['table']) || empty($_GET['table'])) {
    die('Table name is required.');
}

$table = $db->real_escape_string($_GET['table']);

// Get column names
$result = $db->query("SHOW COLUMNS FROM `$table`");
if (!$result) {
    die('Invalid table name.');
}

$columns = [];
while ($row = $result->fetch_assoc()) {
    $columns[] = $row['Field'];
}

// Output CSV header (no extra blank row)
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="' . $table . '_sample.csv"');

$output = fopen('php://output', 'w');
fputcsv($output, $columns);
fclose($output);

$db->close();
exit;