<?php
$homeActive = 'active';
$pokedexActive = '';
$aboutActive = '';
if ($_SERVER["SCRIPT_NAME"] == '/index.php') {
    $homeActive = 'active';
}
if ($_SERVER["SCRIPT_NAME"] == '/pokedex.php') {
    $pokedexActive = 'active';
}
if ($_SERVER["SCRIPT_NAME"] == '/about.php') {
    $aboutActive = 'active';
}

// First connect to database
$connect = mysqli_connect(
    "db", # service name
    "rafa", # username
    "password", # password
    "my_db" #db name
);
if (!$connect) {
    die('Failed to connect to MySQL: ' . mysqli_connect_error());
}

# Get details of searched pokemon
// Create empty array to store data
$poke = [];
$query = "SELECT image, height, weight, type1, type2, poke_id FROM pokemon WHERE LOWER(name) LIKE LOWER((?))";
// Prepared statement
$stmt = $connect->prepare($query);
// Bind and execute statement
$name = $_GET['search'];
$stmt->bind_param("s", $name);
$executed = false;
$executed = $stmt->execute();
$stmt->store_result();
$stmt->bind_result($image, $height, $weight, $type1, $type2, $poke_id);

if ($executed) {
    if ($stmt->num_rows > 0) {
        $stmt->fetch();
        $poke = array(
            'name' => $_GET['search'],
            'img' => $image,
            'h' => $height,
            'w' => $weight,
            't1' => $type1,
            't2' => $type2,
            'id' => $poke_id,
        );
        // Pokémon exists in the database
    } else {
        // Pokémon does not exist in the database, redirect to index.php
        $error = "Pokemon not found";
        $url = "/index.php?error=" . urlencode($error);
        header("Location: " . $url);
        exit;
    }
} else {
    // Error occurred during execution
    $error = "Error executing database query.";
    $url = "/index.php?error=" . urlencode($error);
    header("Location: " . $url);
    exit;
}

// Close statement
$stmt->close();

// Close connection with db
$connect->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/static/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="https://justingolden.me/pokemon-types-css/types.min.css">
    <!-- Favicon attribution: Icon by Roundicons Freebies -->
    <link rel="icon" type="image/png" href="/static/favicon.png">
    <title>Eevee-Dex</title>
    <!-- Importing bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #F5F5F5;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><img src="static/eevee-dex-text.png" alt="eevee dex written in pokemon font (logo)" height="32px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <?php echo $homeActive; ?>" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?php echo $pokedexActive; ?>" href="/pokedex.php">Poké-dex</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?php echo $aboutActive; ?>" href="/about.php" tabindex="-1" aria-disabled="true">About</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="bg-image img-fluid p-1" id="bg_img">

        <main>

            <!-- ACTUAL CONTENT -->


            <!-- Response from search -->
            <div id="details_container" class="container px-lg-5">

                <div class="row mx-lg-n5">

                    <div class="col py-3 px-lg-5">

                        <div class="card" id="reponse_container">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $poke['name'] . " #" . $poke['id']; ?></h5>
                            </div>
                            <img src="<?php echo $poke['img']; ?>" alt="pokemon picture" class="card-img-top">
                        </div>

                    </div>

                    <div class="col py-3 px-lg-5">

                        <div class="card" id="details_card">
                            <h5> Details: </h5>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item row ">
                                    <div class="col-auto" style="float: left;">Height: </div>
                                    <div class="col-auto" style="float: left;"> <?php echo $poke['h'] / 10; ?> m</div>
                                </li>

                                <li class="list-group-item row">
                                    <div class="col-auto" style="float: left;">Weight: </div>
                                    <div class="col-auto" style="float: left;"><?php echo $poke['w'] / 10; ?> kg</div>
                                </li>

                                <li class="list-group-item row">
                                    <div class="col-auto text-capitalize" style="float: left; padding-top: 2px;"><span class="type  <?php echo $poke['t1']; ?>"></span></div>
                                    <?php if($poke['t2'] != NULL) { ?>
                                        <div class="col-auto text-capitalize" style="float: left; padding-top: 2px;"><span class="type <?php echo $poke['t2']; ?>"></span></div>
                                    <?php } ?>
                                </li>
                                
                            </ul>

                        </div>

                    </div>
                </div>
            </div>

            <!-- END ACTUAL CONTENT -->
        </main>

    </div>

    <!-- Footer -->
    <footer>
        <div id="footer">
            <div class="card-footer text-muted" style="background-color: #F5F5F5;">
                Pokémon is a trademark of The Pokémon Company, all rights reserved
            </div>
        </div>
    </footer>

    <!-- Importing bootstrap javascript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>