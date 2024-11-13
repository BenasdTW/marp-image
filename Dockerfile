# Start with a base Node.js image
FROM node:18-alpine

# Set environment variables (optional)
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# Install Chromium for PDF export
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Install Marp CLI globally
RUN npm install -g @marp-team/marp-cli

# Create a directory for the app
WORKDIR /marp

# Copy local markdown files into the container (optional, can also mount later)
COPY . /marp

# Default command to use Marp CLI to convert Markdown to HTML/PDF/other formats
ENTRYPOINT ["marp"]

# Example: Convert all markdown files in /marp
CMD ["--pdf", "."]
