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
    git clone https://github.com/hoangnoah/hr-analytics-data-visualization.git
    cd hr-analytics-data-visualization
    ```

2.  **Ensure Docker and Docker Compose are installed.**

3.  **Build and run the Docker containers:**
    This command will build the custom Superset image and start all services defined in `docker-compose.yaml` (Superset, PostgreSQL, pgAdmin).

    ```bash
    docker-compose up -d --build
    ```
## Usage

- **Access Superset:** Once the containers are running and Superset is initialized, you can access the Superset web interface at `http://localhost:8088`. Log in with the admin credentials you created (default: `admin/admin`). From there, you can add the PostgreSQL database connection and create datasets and dashboards based on your HR data.
- **Access pgAdmin:** You can access pgAdmin at `http://localhost:5050` to manage the PostgreSQL database. Default login credentials might be set in the `docker-compose.yaml` or you can set them up. (Based on your docker-compose, default email is `admin@admin.com` and password is `admin`).

## Project Structure

- `./dataset`: Contains the raw data file (`WA_Fn-UseC_-HR-Employee-Attrition_DIRTY.csv`).
- `./database/backup`: Mounted as `/docker-entrypoint-initdb.d` for potential database initialization scripts.
- `./superset`: Contains custom Superset configuration or build context.
- `./*.ipynb`: Jupyter notebooks for data preprocessing and EDA.
- `docker-compose.yaml`: Defines the services (Superset, PostgreSQL, pgAdmin) and their configurations.

