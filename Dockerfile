#imaj
FROM node:16
# directory
WORKDIR /app
#gereksinimleri kopyala
COPY package.json package-lock.json ./
# node için npm install
RUN npm install
# dosyaları imaja çek
COPY . .
# çalıştığında bu konutlarıu kullan
CMD ["node", "index.js"]
