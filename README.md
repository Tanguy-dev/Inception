# Inception Project

![42 Logo](https://img.shields.io/badge/42-Project-brightgreen.svg)

This is the Inception project, a part of the curriculum at École 42. The goal of this project is to create a Docker-based development environment to deploy various services in separate containers while managing their interconnections.

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Description

The Inception project involves creating a Docker-based infrastructure to deploy several services or applications in isolated containers. Each container represents a different service, and they can communicate with each other via networks defined in Docker. The project aims to enhance our understanding of containerization, networking, and orchestrating services.

This project is an introduction to the world of containerization, where you'll learn about Docker, containers, images, and how to manage and deploy applications using these technologies.

## Features

- Containerization of multiple services using Docker.
- Definition of custom Docker images.
- Management of container interconnections via Docker networks.
- Basic orchestration and deployment using Docker Compose.

## Usage

To use the Inception project, you need to have Docker installed on your machine.

1. Clone the repository: `git clone <repository_url>`
2. Navigate to the project directory: `cd inception`
3. Customize the services and images in the `docker-compose.yml` file.
4. Build and start the services: `make` and `make start`

Your defined services will be deployed in separate containers, and you can access them based on their specified ports and configurations.

## Contributing

Contributions to this project are not generally accepted, as it is an educational project for personal learning purposes.

## License

This project is licensed under the [MIT License](LICENSE).
