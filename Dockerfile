# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static files from the current directory (your app) into Nginx's web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the application accessible
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

