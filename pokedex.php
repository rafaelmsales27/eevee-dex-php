<?php
# Logic for active page
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
# Calculate number of pages
define('TOTAL_POKE', 251);
define('POKE_PER_PAGE', 10);
$total_pages = ceil(TOTAL_POKE / POKE_PER_PAGE); // Use ceil() to round up to the nearest integer
$page = isset($_GET['page']) ? max(1, intval($_GET['page'])) : 1; // Get the page number from URL parameter

// Ensure the page number is within valid range
if ($page > $total_pages) {
    $page = $total_pages;
}

# Get the number of pokemon to be shown in the current page from db
// first connect to db
$connect = mysqli_connect(
    "db", # service name
    "rafa", # username
    "password", # password
    "my_db" #db name
);
if (!$connect) {
    die('Failed to connect to MySQL: ' . mysqli_connect_error());
}

// SQL query to get Pokémon data
$query = "SELECT name, image, poke_id FROM pokemon LIMIT ?, ?";
// Prepared statement
$stmt = $connect->prepare($query);

// Calculate the starting index for the query
$startIndex = ($page - 1) * POKE_PER_PAGE;

// Create a temporary variable since bind doesnt take constants
$pokemonPerPage = POKE_PER_PAGE;

// Bind and execute statement
$stmt->bind_param("ii", $startIndex, $pokemonPerPage);
$stmt->execute();

// Store the results in the $results array
$results = [];
$stmt->bind_result($name, $image, $poke_id);
while ($stmt->fetch()) {
    $results[] = array(
        'name' => $name,
        'img' => $image,
        'id' => $poke_id
    );
}

// Close the statement
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

            <!-- List of all pokemons -->
            <div id="pokedex_container">
                <?php
                $count = min(count($results), POKE_PER_PAGE); // Get the minimum value between total results and POKE_PER_PAGE
                for ($j = 0; $j < $count; $j++) {
                ?>
                    <div class="pokedex_card">
                        <a href="/details.php?search=<?php echo $results[$j]['name']; ?>">
                            <div class="card h-100" style="width: 14rem;">
                                <div class="card-body">
                                    <h5 class="card-title text-capitalize"><?php echo $results[$j]['name'] . " #" . $results[$j]['id']; ?></h5>
                                </div>
                                <img src="<?php echo $results[$j]['img']; ?>" alt="Pokemon image">
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>

            <!-- Pagination bar -->
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <?php if ($page > 1) { ?>
                        <li class="page-item"><a class="page-link" href="/pokedex.php?page=<?php echo ($page - 1); ?>">&laquo;</a></li>
                    <?php } ?>

                    <?php
                    $maxPages = 5; // Maximum number of page buttons to display
                    $startPage = max(1, $page - floor($maxPages / 2));
                    $endPage = min($startPage + $maxPages - 1, $total_pages);

                    if ($startPage > 1) { // Display ellipsis if there are preceding pages
                    ?>
                        <li class="page-item"><a class="page-link">...</a></li>
                        <?php }

                    for ($i = $startPage; $i <= $endPage; $i++) {
                        if ($i == $page) { ?>
                            <li class="page-item active"><a class="page-link"><?php echo $i; ?></a></li>
                        <?php } else { ?>
                            <li class="page-item"><a class="page-link" href="/pokedex.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                        <?php }
                    }

                    if ($endPage < $total_pages) { // Display ellipsis if there are subsequent pages
                        ?>
                        <li class="page-item"><a class="page-link">...</a></li>
                    <?php }

                    if ($page < $total_pages) { ?>
                        <li class="page-item"><a class="page-link" href="/pokedex.php?page=<?php echo ($page + 1); ?>">&raquo;</a></li>
                    <?php } ?>
                </ul>
            </nav>



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