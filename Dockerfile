# Step 1: Use the official Nginx image as the base
FROM nginx:latest

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy your static website files to the container
COPY index.html .
COPY css/ ./css/
COPY script.js ./script.js

# Step 4: Expose port 80


# Step 5: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]