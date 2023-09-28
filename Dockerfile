# Use an official Golang runtime as a parent image
FROM golang:1.21-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Go app
RUN go build -o main cmd/server/main.go

# Expose port 8080
EXPOSE 8080

# Run the Go app when the container starts
CMD ["./main"]