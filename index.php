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

# Get five random pokemons from database to show on screen

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

// Generate five random numbers and store them into an array
$randoms = [];
for ($x = 0; $x < 4; $x++) {
    $randoms[] = rand(1, 251);
}

// Create empty array to store pokemons
$list_poke = [];

$query = "SELECT name, image FROM pokemon WHERE poke_id = ?";
$stmt = $connect->prepare($query);

foreach ($randoms as $r) {
    $stmt->bind_param("i", $r);
    $stmt->execute();
    $stmt->bind_result($name, $image);
    while ($stmt->fetch()) {
        $list_poke[] = array(
            'name' => $name,
            'img' => $image,
        );
    }
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

        <!-- Flash message bar -->
        <header>
            <?php if (isset($_GET['error'])) { ?>
                <div class="alert alert-warning" role="alert">
                    <?php echo $_GET['error']; ?>
                </div>
            <?php } ?>
        </header>

        <main>
            <!-- ACTUAL CONTENT -->
            <!-- Search box -->
            <div id="search_container" class="h-100 d-flex align-items-center justify-content-center">
                <div class="col-md-6">
                    <div class="search-box">
                        <form class="search-form d-flex align-items-center flex-nowrap" action="details.php" method="get">
                            <input type="text" autocomplete="off" class="form-control form-input" name="search" placeholder="Pokemon Name">
                            <button type="submit" class="btn btn-light search-btn">
                                Search
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </main>

        <!-- Floater cards -->
        <div id="card_container">
            <?php foreach ($list_poke as $poke) { ?>
                <a href="/details.php?search=<?php echo $poke['name'] ?>">
                    <div class="card h-100" style="width: 14rem;">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $poke['name'] ?></h5>
                        </div>
                        <img src="<?php echo $poke['img'] ?>" alt="pokemon picture" class="card-img">
                    </div>
                </a>
            <?php } ?>
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