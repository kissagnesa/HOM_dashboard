<?php
declare(strict_types=1);

session_start();

if (!isset($_SESSION['user'])) {
    http_response_code(403);
    exit('Nincs jogosultság.');
}

require_once (__DIR__ . '/../connect.php'); 

$sql = 'SELECT booking_id, booking_date, room_id, team_id, result, avaible, comment FROM booking';
$result = $connect->query($sql);

if (!$result) {
    http_response_code(500);
    exit('SQL hiba: ' . $connect->error);
}

while (ob_get_level() > 0) { ob_end_clean(); }

$filename = 'booking_export_' . date('Y-m-d_H-i-s') . '.csv';
header('Content-Type: text/csv; charset=UTF-8');
header('Content-Disposition: attachment; filename="' . $filename . '"');
header('Pragma: no-cache');
header('Expires: 0');

echo "\xEF\xBB\xBF";

$out = fopen('php://output', 'w');

fputcsv($out, ['ID','Dátum','Szoba','Csapat','Eredmény','Elérhető','Megjegyzés'], ';');

while ($row = $result->fetch_assoc()) {
    fputcsv($out, [
        $row['booking_id'],
        $row['booking_date'],
        $row['room_id'],
        $row['team_id'],
        $row['result'],
        $row['avaible'],
        $row['comment'],
    ], ';');
}

fclose($out);
exit;
