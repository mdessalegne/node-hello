# Use an official Node.js runtime as a parent image
FROM 647757222309.dkr.ecr.us-east-1.amazonaws.com/nodeapp-md:latest

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000


# Run app.js when the container launches
CMD ["npm", "start"]
