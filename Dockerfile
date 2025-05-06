# Use Nginx as the base image
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy website content to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
