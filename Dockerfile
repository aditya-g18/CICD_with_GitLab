FROM python:3.8-slim

# Update and install curl
RUN apt-get update && apt-get install -y curl

WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
