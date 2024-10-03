FROM rust:latest

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint executable
RUN chmod +x /entrypoint.sh

# Run the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
