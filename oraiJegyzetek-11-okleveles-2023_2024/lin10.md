# Saját image létrehozása

Docker image: réteges
Van egy read-write, ez a container
Van egy read-only, ez a docker image

Van egy alap image, és erre tesszük rá a rétegeket.

- különböző parancsokat futtatunk, és ezek a rétegek
- Entry point:
  - belépési pont
  - ami ebben megvan adva, ez fog lefutni
  - a container indulásakor ez a parancs fut le

Egy másik mód kísérletezésre:

- egy alap imaget futtatsz, és abban belépsz a belsejébe
  - `docker exec -ti --user root <container> bash`
    - Kapok egy terminált, ami a konténerben fut
    - Benne legy minden amit akarok, de még mindíg elveszhet, ami benne van.
      - DE! Van egy `docker commit`, ami a container tartalmát beleírja egy image-be
      - Vigyázat! Így törlődik az entry point, és újat kel megadni a docker comittal

Dockerfile --> utasításlista

- `FROM nev/image:verzió`: melyik image-ből indulunk
- `RUN`: parancsok, amiket futtatni akarunk
- `COPY`: fájlokat másolunk az image-be a gazdagépről
- `EXPOSE`: portokat nyitunk meg a containerben
- `CMD`: parancs, ami fut, amikor elindítjuk a containerünket
- `ENTRYPOINT`: ez tartalmazz a szolgáltatást, amiért a container létezik

Container ID: egy hexadec szám, hasítófv-vel jött létre. Egyedi azonosítója a containernek. Ezt a számot a docker generálja.

Parancsok:

- `docker exec`: egy containerben egy terminált nyit meg
  - `docker exec -ti --user root <container> bash`
    - Kapok egy terminált, ami a konténerben fut
- `docker commit`: egy container tartalmát beleírja egy image-be
- `docker build . -t <nev>`: buildel egy image-et a Dockerfile-ból
  
## Feladat

JSON webszerver futtatása dockerben, a `json-server` csomagot használva.

- `json-server --watch db.json --port 3004 -H 0.0.0.0`
  - `--watch db.json`: figyeli a db.json fájlt
  - `--port 3004`: a 3004-es porton fut
  - `-H`: A 0.0.0.0 ip cím azt jelenti, hogy bármilyen ip címről elérhető lesz a webszerver.

1. Kell egy `debian` image
2. arra egy `apt nodejs`
3. azon egy `npm install -g json-server`

Vagy ha alap imageként, egy node image-et használunk, akkor:

1. `npm install -g json-server`

Néhány parancs, hogy tudjunk mit kezdeni, a szegény imagaggel / containerrel
Docker logika:

- `docker container ls`: futó container-ek listája
- `docker ps`: mivel hosszú: futó container-ek listája
- `docker network ls`: hálózatok listája

### Imagekkel kapcsolatos parancsok

1. `docker search <valami>`: megkeresi a docker hub-on / beállított helyen lévő imagek között ezt a nevet, és kilistázza
2. `docker pull szerzo/imagenev:verzioszam`: letölti az image-et
3. `docker image ls`: listázza a letöltött image-eket
4. `docker images`: listázza a letöltött image-eket

### Containerrel kapcsolatos parancsok

1. `docker ps`: futó container-ek listája
2. `docker run szerzo/imagenev:verzioszam`: container futtatása
3. `docker start/stop <dockerid>`: container leállítása vagy futtatása, kell hogy legyen egy leálított / futó container hozzá
4. `docker image rm <imageid>`: image törlése
5. `docker rm <dockerid>`: container törlése, kell hogy legyen egy leálított container hozzá

### Hibakereséshez

1. `docker inspect <dockerid>`: container részletes adatai. Ennél többet nem lehet tudni róla. Úgy van értelme, hogy kiiratok mindent, és egy grap-pel szőrök / keresek benne valamit.
2. `docker logs <dockerid>`: container logjai
3. `docker stats`: mutatja, mennyire vagy leterhelve, milyen erőforrást esznek a konténerek

### Docker egyebek

1. `docker exec -ti <dockerid> bash`: belépünk a containerbe, és bash parancsot futtatunk
2. `docker commit <dockerid> <imagenev>`: a container tartalmát beleírja egy image-be
3. `docker cp <dockerid>:<fajl> <hely>`: fájlt másol a containerből a gazdagépre.
