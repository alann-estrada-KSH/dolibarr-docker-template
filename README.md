# Dolibarr Development Docker Template
This repository provides a robust Docker Compose template tailored for Dolibarr ERP/CRM development. Key features include:

* **MariaDB container with persistent storage**: Ensures your data remains intact across container restarts.
* **PHP-Apache container with live code editing**: Mount your local Dolibarr source code for real-time development.
* **Customizable environment variables**: Simplify configuration to suit your development needs.

---

## Prerequisites

Before you begin, ensure you have the following installed:

* **Docker** and **Docker Compose**
* **Git** (to clone the Dolibarr source code)

---

## Quick Start Guide

1. **Clone this repository**:

    ```bash
    git clone https://github.com/alann-estrada-KSH/dolibarr-docker-template.git
    cd dolibarr-docker-template
    ```

2. **Download Dolibarr source code**:

    Clone the official Dolibarr repository into the `dolibarr` directory:

    ```bash
    git clone https://github.com/Dolibarr/dolibarr.git dolibarr
    ```

    Or clone your own fork if you have customizations:

    ```bash
    git clone https://github.com/your-username/dolibarr.git dolibarr
    ```

3. **Launch the environment**:

    Build and start the containers with:

    ```bash
    docker-compose up -d --build
    ```

4. **Install Dolibarr**:

    Open [http://localhost:8080/install](http://localhost:8080/install) in your browser and complete the installation wizard.

5. **Optional: Connect to the database**:

    Use tools like MySQL Workbench or Navicat with the following details:

    * **Host**: `localhost`
    * **Port**: `3306` (or your custom `DB_PORT`)
    * **Credentials**: Found in your `docker-compose.yml` file

6. **Start coding**:

    Open the `dolibarr` folder in your preferred editor (e.g., VSCode). Your changes will reflect instantly in the running container.

---

## Key Notes

* **Data persistence**: MariaDB data is stored in a Docker volume (`db_data`) to prevent loss during container restarts.
* **Custom PHP setup**: Modify the `Dockerfile` to change PHP versions or add extensions.
* **Stopping containers**: Use `docker-compose down` to stop the environment.
* **Removing all data**: Use `docker-compose down -v` to delete volumes and reset the database.

---

## Troubleshooting Tips

* **Database connection issues**: Verify the database container is running and environment variables are correctly configured.
* **Port conflicts**: Update `DB_PORT` and `WEB_PORT` in `docker-compose.yml` and the `Dockerfile` if needed.

---

This template is designed to streamline your Dolibarr development workflow. Customize it as needed and start building today!

> By **[Alann Estrada](https://github.com/alann-estrada-KSH)**  
> **Kristal Software House Development Team**  
> *"Crafting software solutions to simplify your life"*  

Feel free to include additional details such as your role (e.g., "Lead Developer") or a brief mention of your expertise (e.g., "Specializing in ERP/CRM solutions").
