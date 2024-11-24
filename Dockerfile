# Stage 1: Build the React application
FROM node:18 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React application
RUN npm run build

# Stage 2: Serve the application using nginx
FROM nginx:alpine

# Copy the built React files from the previous stage to the nginx HTML folder
COPY --from=build /app/dist /usr/share/nginx/html

# Expose the default nginx port
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
