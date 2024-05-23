<?php
include 'database.php';

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $date = isset($_GET['date']) ? $_GET['date'] : get_current_date();
    $result = execute_stored_procedure('SelectDate', array($date));
    $response = array();
    foreach ($result as $row) {
        $response[] = array(
            'temperature' => $row['temperature'],
            'humidity' => $row['humidity'],
            'timestamp' => $row['timestamp']->format('Y-m-d H:i:s'),
            'id' => $row['id']
        );
    }
    echo json_encode($response);
} else {
    http_response_code(405);
    echo json_encode(array('error' => 'Method Not Allowed'));
}
?>
