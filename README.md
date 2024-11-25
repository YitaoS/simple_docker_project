# Simple Python Dockerized Application

This is a simple Python application built with Flask and containerized using Docker. 
![CI/CD Status](https://github.com/YitaoS/simple_docker_project/actions/workflows/cicd.yml/badge.svg)

---

## Features

- Python Flask web application
- Dockerized for easy deployment
- CI/CD pipeline to build and push the Docker image to Docker Hub

---

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine
- Optionally, a [Docker Hub](https://hub.docker.com/) account for image hosting

---

## How to Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/YitaoS/simple_docker_project.git
   cd simple_docker_project
   ```

2. Build the Docker image:
   ```bash
   docker build -t simple-python-app .
   ```

3. Run the Docker container:
   ```bash
   docker run -d -p 5000:5000 simple-python-app
   ```

4. Open your browser and visit:
   ```
   http://localhost:5000
   ```

---

## Using a Different Port

If port `5000` is already in use, you can map the container to a different host port:
```bash
docker run -d -p 5001:5000 simple-python-app
```
Access the app at:
```
http://localhost:5001
```

---

## Pushing to Docker Hub

1. Log in to Docker:
   ```bash
   docker login
   ```

2. Tag the image:
   ```bash
   docker tag simple-python-app yitaos/simple-python-app
   ```

3. Push the image:
   ```bash
   docker push yitaos/simple-python-app
   ```

---

## CI/CD Pipeline

This project includes a GitHub Actions workflow for automating the build and push process.

### Steps:

1. Configure Docker Hub credentials in GitHub repository secrets:
   - `DOCKER_USERNAME`: Your Docker Hub username.
   - `DOCKER_PASSWORD`: Your Docker Hub password.

2. Push changes to the `main` branch, and the workflow will:
   - Build the Docker image.
   - Push it to Docker Hub with the `latest` tag.

---

## File Structure

```
.
├── app.py          # Flask application
├── Dockerfile      # Docker configuration file
└── .github/
    └── workflows/
        └── ci-cd.yaml  # CI/CD workflow for GitHub Actions
```

---

## Troubleshooting

- **Port Already in Use:** Use a different port for the container (`docker run -p 5001:5000`).
- **Access Issues:** Ensure Docker is running and the container is active (`docker ps`).
