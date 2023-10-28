# Use the official Nginx base image
FROM nginx:latest

# Copy your web application files into the container
COPY ./your-web-app /usr/share/nginx/html

# Expose port 80 for HTTP traffic (Nginx default)
EXPOSE 80

# Start the Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
