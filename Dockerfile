# Base image
FROM node:14-alpine

# Set environment variables
ENV APP_HOME=/app
ENV HOST=0.0.0.0
ENV PORT=8080

# Set working directory
WORKDIR $APP_HOME

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Vue.js application
RUN npm run build

# Expose the port
EXPOSE $PORT

# Start the application
CMD ["npm", "run", "serve"]
