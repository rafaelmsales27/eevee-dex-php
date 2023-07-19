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

            <!-- About us -->
            <div id="about_container" class="container align-items-center">
                <div class="card text-dark bg-light mb-3">
                    <div class="card-body">
                        <h5 class="card-title fw-bolder">About us</h5>
                        <p class="card-text">This project is a fan-made creation and is not affiliated with or endorsed by The Pokémon Company. Pokémon and all related media, including but not limited to names, images, and trademarks, are registered trademarks of The Pokémon Company.</p>
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