# Use a smaller, Alpine-based Node.js image
FROM node:18-alpine3.21

# Set working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first
COPY  . .

# Install only production dependencies
RUN npm install --production

# Expose the app port
EXPOSE 3000

# Run the application
CMD ["npm", "start"] 
