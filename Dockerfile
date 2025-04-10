# Use Node.js official image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files into the container
COPY . .

# Expose port 3000 to the outside
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
