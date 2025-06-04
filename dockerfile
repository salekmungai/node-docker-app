# Use official Node.js image
FROM node:18

#Set app directory
WORKDIR /app

#Copy package.json and install deps
COPY package*.json ./
RUN npm install

#Copy source code
COPY . .

#Expose app port
EXPOSE 3000

#Start app
CMD ["npm", "start"]


