# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /fastapi-app

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

COPY ./requirements.txt /fastapi-app/requirements.txt

# Install Python requirements using Pip.
RUN pip install -r requirements.txt

# Copy your codebase into the Docker container.
COPY . /fastapi-app

# Run FastAPI server on the port exposed above.
CMD ["uvicorn", "main:app", "--reload"]