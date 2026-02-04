# Use official slim Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy entire project into container
COPY . /app

# Install the project itself (this uses setup.py / pyproject.toml)
RUN pip install --no-cache-dir .

# Optional: If you want to install development dependencies too (not necessary for SonarQube analysis)
# RUN pip install --no-cache-dir -r requirements-dev.txt

# Simple command just to confirm container starts (not needed for analysis)
CMD ["echo", "Docker container built successfully - ready for SonarQube analysis"]