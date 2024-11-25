# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files to the container
COPY app.py /app

# Install dependencies
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
