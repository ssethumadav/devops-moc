# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files to /app
COPY . /app

# Install Flask
RUN pip install flask

# Set environment variable
ENV FLASK_APP=app.py

# Expose port
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
