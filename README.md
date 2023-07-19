# Eevee Index (eevee-dex)

A web application that serves as an index of Pokemons, providing pictures, descriptions, and other data for each Pokemon entry. It uses php and MySQL inside a docker container. It also uses the MySQL Improved Extension (MySQLi) to connect to the database.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)
- [Disclaimer](#disclaimer)
- [Contact](#contact)

## Installation

1. Clone the repository:    `git clone https://github.com/your-username/eevee-dex.git`
2. Initiate docker container:    `docker-compose up`
3. Set up MySQLi library: Run the command `docker-php-ext-install mysqli` on the docker container terminal and restart the container to apply changes.

## Usage

1. Open the web application in your browser.
2. Browse through the Poké-dex Index to view pokemon entries.
3. Click on individual pokemon entries to see detailed information, including pictures, descriptions, and additional data.
4. Use the search functionality to find specific pokemon by name.

## Features

- [x] Comprehensive index of pokemon entries.
- [x] Display of pokemon pictures, weight and height.
  - [ ] Display evolutions
  - [x] Display type
    - [x] Add style to types.
  - [x] Add pagination.
- [x] Search functionality to find specific pokemon by name or id.
<!--  - [ ] Search by type -->
<!--  - [ ] Search by habitat -->
- [ ] Allow users to register and have favorite pokemon.
- [ ] Allow password change.

<!-- - [ ] Have pokemon news section linked to pokemon official news -->

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your contribution: `git checkout -b feature/your-feature`.
3. Make your changes and commit them: `git commit -m "Add your commit message"`.
4. Push your branch to your forked repository: `git push origin feature/your-feature`.
5. Open a pull request on the original repository.

<!-- Please ensure that your contributions adhere to the [code of conduct](CODE_OF_CONDUCT.md). -->

## License

<!-- This project is licensed under the [MIT License](LICENSE.md). -->

## Acknowledgments

- The [pokemon API](https://pokeapi.co/) for providing the data used in this application.

## Disclaimer

This project is a fan-made creation and is not affiliated with or endorsed by The Pokémon Company. Pokémon and all related media, including but not limited to names, images, and trademarks, are registered trademarks of The Pokémon Company.

## Contact

For any questions or inquiries, please reach out to [rafaelmsales27@gmail.com].
