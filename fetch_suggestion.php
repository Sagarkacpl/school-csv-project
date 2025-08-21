<?php
include "db.php"; // apna DB connection file


$month = str_pad($_GET['month'] ?? '', 2, "0", STR_PAD_LEFT); 
// $department = $_GET['department'] ?? '';
$year = date('Y'); 
$finalYear = $year.'-'.$month.'-01';

 $sql = "SELECT id, srno, Department, Month, Audit_Rating, Suggestions_For_Next_Month, Deleted_Status, Created_at 
        FROM suggestion 
        WHERE Month = '$finalYear'";

// if ($department != '') {
//   $sql .= " AND Department LIKE '%".$db->real_escape_string($department)."%' ";
// }

$result = $db->query($sql);

if ($result && $result->num_rows > 0) {
  echo json_encode([
    'status' => 'success',
    'data' => $result->fetch_all(MYSQLI_ASSOC)
  ]);
} else {
  echo json_encode([
    'status' => 'error',
    'message' => 'No records found!'
  ]);
}

$db->close();
?>
