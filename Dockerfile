# Stage 1: install deps and build
FROM node:18-alpine AS builder
WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --production=false

COPY . .
RUN npm run build

# Stage 2: production image
FROM node:18-alpine AS runner
WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
ENV NODE_ENV=production
ENV PORT=3000

COPY --from=builder /app/package.json /app/package-lock.json* /app/.next ./
COPY --from=builder /app/public ./public

RUN npm ci --production=true

USER appuser

EXPOSE 3000
CMD ["node_modules/.bin/next", "start", "-p", "3000"]