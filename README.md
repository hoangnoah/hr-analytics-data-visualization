# HR Analytics Data Visualization

## Project Description

This project focuses on analyzing and visualizing human resources employee attrition data. It utilizes a Dockerized environment comprising PostgreSQL for data storage and Apache Superset for creating interactive dashboards and visualizations. Jupyter notebooks were employed for initial data preprocessing and exploratory data analysis on the provided dataset (`WA_Fn-UseC_-HR-Employee-Attrition_DIRTY.csv`).

The goal is to gain insights into factors influencing employee turnover through data analysis and interactive visualizations.

## Features

- Data preprocessing and exploratory data analysis using Jupyter Notebooks.
- Data storage in a PostgreSQL database.
- Interactive data visualization dashboards built with Apache Superset.
- Dockerized setup for easy deployment and environment management.

## Technologies Used

- Docker
- Docker Compose
- PostgreSQL
- Apache Superset
- Jupyter Notebook
- Python (for data processing)

## Setup and Installation

1.  **Clone the repository:**

    ```bash
    git clone <Your_Github_Repo_URL> # Replace with your repository URL
    cd hr-analytics-data-visualization
    ```

2.  **Ensure Docker and Docker Compose are installed.**

3.  **Build and run the Docker containers:**
    This command will build the custom Superset image and start all services defined in `docker-compose.yaml` (Superset, PostgreSQL, pgAdmin).

    ```bash
    docker-compose up -d --build
    ```

    The `-d` flag runs the containers in detached mode (in the background).

4.  **Initialize Superset (if first time):**
    You might need to initialize the Superset database and create an admin user. Connect to the running Superset container and run the setup commands.

    ```bash
    docker exec -it superset superset db upgrade
    docker exec -it superset superset init
    docker exec -it superset superset load_examples
    docker exec -it superset superset create_admin --username admin --firstname Superset --lastname Admin --email admin@example.com --password admin # Change password as needed
    ```

    _Note: Running `load_examples` is optional._

5.  **Copy data to the PostgreSQL container:**
    The `docker-compose.yaml` file is set up to mount the `./dataset` directory into the PostgreSQL container at `/dataset`. You can connect to the PostgreSQL database to load the `WA_Fn-UseC_-HR-Employee-Attrition_DIRTY.csv` file into a table.

## Usage

- **Access Superset:** Once the containers are running and Superset is initialized, you can access the Superset web interface at `http://localhost:8088`. Log in with the admin credentials you created (default: `admin/admin`). From there, you can add the PostgreSQL database connection and create datasets and dashboards based on your HR data.
- **Access pgAdmin:** You can access pgAdmin at `http://localhost:5050` to manage the PostgreSQL database. Default login credentials might be set in the `docker-compose.yaml` or you can set them up. (Based on your docker-compose, default email is `admin@admin.com` and password is `admin`).

## Project Structure

- `./dataset`: Contains the raw data file (`WA_Fn-UseC_-HR-Employee-Attrition_DIRTY.csv`).
- `./database/backup`: Mounted as `/docker-entrypoint-initdb.d` for potential database initialization scripts.
- `./superset`: Contains custom Superset configuration or build context.
- `./*.ipynb`: Jupyter notebooks for data preprocessing and EDA.
- `docker-compose.yaml`: Defines the services (Superset, PostgreSQL, pgAdmin) and their configurations.
- `LICENSE`: Project license file.

## License

This project is licensed under the terms of the [License Name] license. See the [LICENSE](LICENSE) file for details.
