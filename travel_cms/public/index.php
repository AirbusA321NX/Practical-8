<?php include("../includes/db_connection.php"); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Travel Destinations</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .destination-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .destination-image {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 8px;
            margin-right: 15px;
        }

        .destination-details {
            flex-grow: 1;
        }

        .destination-details h3 {
            margin: 0 0 5px;
            color: #2c3e50;
        }

        .destination-details p {
            margin: 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Travel Destinations</h1>
        <nav>
            <a href="index.php">Home</a>
            <a href="login.php">Admin Login</a>
        </nav>
        <h2>Explore Our Destinations</h2>

        <?php
        // Fetch all destinations
        $query = "SELECT * FROM destinations WHERE visible = 1";
        $result = mysqli_query($connection, $query);

        while ($destination = mysqli_fetch_assoc($result)) {
            $name = htmlspecialchars($destination['name']);
            $location = htmlspecialchars($destination['location']);
            $description = htmlspecialchars($destination['description']);

            // Construct the image path
            $image_path = "images/" . strtolower($name) . ".jpg";
            ?>

            <div class="destination-item">
                <!-- Display image if it exists -->
                <?php if (file_exists($image_path)) { ?>
                    <img src="<?php echo $image_path; ?>" alt="<?php echo $name; ?> Image" class="destination-image">
                <?php } else { ?>
                    <img src="images/default.jpg" alt="Default Image" class="destination-image">
                <?php } ?>

                <div class="destination-details">
                    <h3><?php echo $name; ?></h3>
                    <p><strong>Location:</strong> <?php echo $location; ?></p>
                    <p><?php echo substr($description, 0, 100) . '...'; ?></p>
                    <a href="destination.php?id=<?php echo $destination['id']; ?>">Read More</a>
                </div>
            </div>

        <?php } ?>
    </div>
</body>

</html>

<?php
// Close database connection
mysqli_free_result($result);
mysqli_close($connection);
?>