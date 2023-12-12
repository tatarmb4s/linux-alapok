# Debian image használata
FROM debian:latest

# Szükséges csomagok telepítése
RUN apt-get update -y && apt-get install -y curl

# Node.js telepítése
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs

# json-server telepítése
RUN npm install -g json-server

# Munkakönyvtár beállítása
WORKDIR /data

# db.json fájl másolása a konténerbe
COPY db.json .

# json-server indítása
CMD json-server --watch db.json --port 3004 -H 0.0.0.0
