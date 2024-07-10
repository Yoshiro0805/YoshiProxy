<?php
header('Content-Type: application/json');

// Database connection settings
$servername = "sql12.freesqldatabase.com";
$username = "sql12719057";
$password = "8ZBFbJWsmn";
$dbname = "sql12719057";
$port = 3306; // Default MySQL port

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle POST request for updating clothes data
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['userid']) && isset($_POST['clothes'])) {
    $userid = $_POST['userid'];
    $clothes = $_POST['clothes'];

    // Check if userid already exists in database
    $check_sql = "SELECT userid FROM clothes WHERE userid = ?";
    $check_stmt = $conn->prepare($check_sql);
    $check_stmt->bind_param("s", $userid);
    $check_stmt->execute();
    $check_result = $check_stmt->get_result();

    if ($check_result->num_rows > 0) {
        // Update existing userid entry
        $update_sql = "UPDATE clothes SET clothes = ? WHERE userid = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param("ss", $clothes, $userid);
        
        if ($update_stmt->execute()) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("error" => "Failed to update clothes"));
        }
    } else {
        // Insert new userid entry
        $insert_sql = "INSERT INTO clothes (userid, clothes) VALUES (?, ?)";
        $insert_stmt = $conn->prepare($insert_sql);
        $insert_stmt->bind_param("ss", $userid, $clothes);
        
        if ($insert_stmt->execute()) {
            echo json_encode(array("success" => true));
        } else {
            echo json_encode(array("error" => "Failed to insert clothes"));
        }
    }

    $check_stmt->close();
    if (isset($update_stmt)) $update_stmt->close();
    if (isset($insert_stmt)) $insert_stmt->close();
} else {
    // Fetch all clothes data from the database
    $sql = "SELECT userid, clothes FROM clothes";
    $result = $conn->query($sql);

    $response = array();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $userid = $row['userid'];
            $clothes = json_decode($row['clothes']); // Decode JSON string

            // Build response in the desired format
            $response[$userid] = $clothes;
        }

        echo json_encode($response);
    } else {
        echo json_encode(array("error" => "No clothes data found"));
    }
}

$conn->close();
?>
