
# Stage 1 : build

FROM node:20 AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

# RUN npm run build



# Stage 2 : production

FROM node:20-slim AS production

WORKDIR /app

ENV NODE_ENV=production

COPY package*.json ./

RUN npm ci --omit=dev

COPY --from=build /app ./

EXPOSE 3000

CMD ["npm", "start"]