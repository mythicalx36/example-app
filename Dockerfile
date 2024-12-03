# Use the official Node.js image as a base
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if it exists) first to leverage Docker's cache
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files (index.js)
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
