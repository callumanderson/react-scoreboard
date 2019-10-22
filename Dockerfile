FROM node:12.12.0-alpine

# Set Working Directory
WORKDIR /app

# Add necessary dirs to PATH
ENV PATH /app/node_modules .bin:$PATH

# Install and cache app dependencies
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

# Start the app
CMD ["npm", "start"]
