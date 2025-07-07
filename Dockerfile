# Gunakan base image node js minimal
FROM node:16-alpine

# Set working directory
WORKDIR /src

# Copy package.json dan package-lock.json (atau yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy semua source code ke container
COPY . .

# Expose port yang digunakan service (ubah sesuai service)
EXPOSE 3000

# Jalankan aplikasi
CMD ["node", "index.js"]
