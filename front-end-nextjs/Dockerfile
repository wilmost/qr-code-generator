FROM node:20-alpine AS builder

WORKDIR /app 

COPY package.json package-lock.json ./
RUN  npm install 
COPY . . 
RUN npm run build

#

FROM node:20-alpine
WORKDIR /app  
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/package*.json ./
RUN npm install --production
EXPOSE 3000
CMD ["npm", "start"]
