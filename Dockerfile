# Use lightweight Python image
FROM python:3.9-slim

# Set work directory inside container
WORKDIR /app

# Copy files into container
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run app
CMD ["python3", "app.py"]

