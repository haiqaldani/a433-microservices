# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory container
WORKDIR /app

# Menyalin seluruh source code ke container
COPY . .

# Menentukan environment variabel production dan host DB
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependencies produksi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan server pada saat container dijalankan
CMD ["npm", "start"]
