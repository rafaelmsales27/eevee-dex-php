<?php
# Load 251 (gen1 & gen2) pokémon into database
$connect = mysqli_connect(
    "db", # service name
    "rafa", # username
    "password", # password
    "my_db" #db name
);

if (!$connect) {
    die('Failed to connect to MySQL: ' . mysqli_connect_error());
}

## Loop querying API
// First access PokeAPI
// Create a new cURL resource
$curl = curl_init();

// Set the API base URL
$url = 'https://pokeapi.co/api/v2/pokemon/';

for ($i = 1; $i <= 251; $i++) {
    // Set the request options
    curl_setopt($curl, CURLOPT_URL, $url . $i);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

    // Execute the request and get the response
    $response = curl_exec($curl);

    // Check for errors
    if (curl_errno($curl)) {
        $error = curl_error($curl);
        // Handle the error
    } else {
        // Process the response
        $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
        if ($httpCode === 200) {
            // Successful request
        } else {
            // Handle the non-200 HTTP response
            echo 'error querying PokeAPI';
        }
    }

    // Transform response into array
    $array_resp = json_decode($response, TRUE);

    // Store values returned from API to variables to insert into db
    $name = $array_resp["name"];
    $image = $array_resp['sprites']['versions']['generation-v']['black-white']['animated']['front_default'];
    $height = $array_resp['height'];
    $weight = $array_resp['weight'];
    $type1 = $array_resp['types']['0']['type']['name'];
    $poke_id = $i;
    // Check if type2 key exists in the $array_resp
    if (array_key_exists('1', $array_resp['types'])) {
        // Key exists, access its value
        $type2 = $array_resp['types']['1']['type']['name'];
        $insert_query = "INSERT INTO pokemon(name, image, height, weight, type1, type2, poke_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
        // Prepared statement
        $stmt = $connect->prepare($insert_query);
        // Bind and execute statement
        $stmt->bind_param("ssiissi", $name, $image, $height, $weight, $type1, $type2, $poke_id);
    } else {
        // Key does not exist
        $insert_query = "INSERT INTO pokemon(name, image, height, weight, type1, poke_id) VALUES (?, ?, ?, ?, ?, ?)";
        // Prepared statement
        $stmt = $connect->prepare($insert_query);
        // Bind and execute statement
        $stmt->bind_param("ssiisi", $name, $image, $height, $weight, $type1, $poke_id);
    }

    $stmt->execute();

    // Close cURL resource
    curl_close($curl);
}
?>