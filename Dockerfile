FROM alpine:latest

# Install basic utilities
RUN apk add --no-cache curl bash

# Add application files
WORKDIR /app
COPY . .

# Set up entrypoint
CMD ["echo", "Hello from test package!"]
