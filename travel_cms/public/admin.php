<?php
include("../includes/session.php");
include("../includes/db_connection.php");
include("../includes/functions.php");
confirm_logged_in();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="container">
        <h1>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</h1>
        <nav>
            <ul>
                <li><a href="../admin/manage_content.php">Manage Destinations</a></li>
                <li><a href="../admin/manage_admins.php">Manage Admins</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </div>
</body>

</html>