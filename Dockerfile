# Use official Nginx image as base
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files from src to Nginx HTML directory
COPY ../src /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
