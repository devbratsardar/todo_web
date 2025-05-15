# Use an official Python 3.7 runtime as the base image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 for the Flask app
EXPOSE 80

# Define the environment variable to allow Flask to run in production mode
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=80

# Run the Flask app
CMD ["flask", "run"]

