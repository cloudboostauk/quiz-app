# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package.json  ./

# Install dependencies
RUN npm install

# Copy the app files to the container
COPY app.js index.html style.css ./

# Expose the port on which the app will run
EXPOSE 3000

# Set the command to run your app when the container starts
CMD [ "node", "app.js" ]

