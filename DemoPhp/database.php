<?php
function connect_to_database() {
    $serverName = "DUYCAO";
    $connectionOptions = array(
        "Database" => "Api_Cambien",
        "Uid" => "sa",
        "PWD" => "123456",
        "CharacterSet" => "UTF-8"
    );
    $conn = sqlsrv_connect($serverName, $connectionOptions);
    if ($conn === false) {
        die(print_r(sqlsrv_errors(), true));
    }
    return $conn;
}

function execute_stored_procedure($proc_name, $params = array()) {
    $conn = connect_to_database();
    $query = "{CALL $proc_name(?)}";
    $stmt = sqlsrv_prepare($conn, $query, $params);
    if (!$stmt) {
        die(print_r(sqlsrv_errors(), true));
    }
    if (!sqlsrv_execute($stmt)) {
        die(print_r(sqlsrv_errors(), true));
    }
    $data = array();
    while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
        $data[] = $row;
    }
    sqlsrv_close($conn);
    return $data;
}

function get_current_date() {
    return date('Y-m-d');
}
?>
