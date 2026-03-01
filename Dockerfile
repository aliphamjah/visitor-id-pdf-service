FROM node:20-alpine

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# Install dependencies (ci = deterministic, faster, stricter than install)
COPY package*.json ./
RUN npm ci --omit=dev

# Copy source code
COPY . .

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 8250

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://localhost:8250/ || exit 1

# NOTE: package.json tidak punya script "start".
# Sesuaikan CMD ini dengan entrypoint yang benar untuk service ini.
CMD ["npm", "start"]
