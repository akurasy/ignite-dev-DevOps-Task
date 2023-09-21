# Pls note, that i am using  the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

#Install app dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Express.js application
CMD ["node", "app.js"]

