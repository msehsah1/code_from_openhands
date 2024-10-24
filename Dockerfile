
# Use Python 3.12 as the base image
FROM python:3.12

# Set up a working directory inside the container
WORKDIR /app

# Install FastAPI and uvicorn
RUN pip install fastapi uvicorn

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Start the FastAPI application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
