# Use the official Golang image as a parent image
FROM golang:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Terraform binary
RUN /bin/bash ./scripts/build.sh

# Set the working directory to $GOPATH
WORKDIR $GOPATH

# Set the entrypoint to Terraform
ENTRYPOINT ["terraform"]
