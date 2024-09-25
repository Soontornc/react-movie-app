# Pull base image from Docker Hub
FROM node:18.20.4-alpine

# Set the working directory
WORKDIR /usr/app

# Copy the package.json file
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy code from host to container
COPY . .

# Expose port 4173
EXPOSE 5173

# Build the app
# RUN npm run build

# Run the app
CMD ["npm", "run", "dev"]