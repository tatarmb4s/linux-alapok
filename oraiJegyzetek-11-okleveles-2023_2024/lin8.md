# Docker

- Gép: neu-docker
  - neu
  - docker1234
- Disk létrehozása:
  - 1gb-os
  - lemezek sitázása:
    - blkid
  - Nincs sdb benne:
    - cfdisk /dev/sdb
    - write
  - ls -> sdb1
  - De nincs még file system: mkfs.ext4 /dev/sdb1
  - Mivel nincs becsatolva, nem tudjuk használni
    - mount /dev/sdb1 /mnt (itt listázhatom ellenőrzésrnek a df -h val a particiókat)
    - touch /mnt/nev.txt
    - unmount /mnt
    - ls /mnt: Nem lesz jó, mert hibás lesz a lecsatolás miatt
- Containerelet csinál
  - a container egy tároló: egy virtuális gép, de nem teljes gép virtualizálása
  - A container egy processz, ami a hoston fut, de úgy viselkedik, mintha egy teljes gép lenne
  - minden az user space-ban van
  - a docker -d (daemon) szolgáltatás futtatja:
    - rendszerrel inudul
    - admi jogokkal
    - meg tartja az admin jogot
    - kvázi egy szerver
    - a felhasználó a docker alklmazáson keresztül dumál vele
      - docker ps -a
      - docker run
      - stb
      - docker ps -ls
    - másik mód a docker-compose parancs:
      - olvas egy docker-compose.yml fájlt, és az alapján futtatja a konténereket
      - docker compose up
      - docker compose down
  - docker run -it ubuntu:18.04 bash
    - -it: interaktív módban futtatja
    - ubuntu:18.04: az ubuntu 18.04-es verzióját futtatja
    - bash: bash shellt futtatja


# File systems

- Fájlrendszerek.
  - fat: exfat, fat64, fat32, fat16, fat12: a legprimitívebb, 4gb-os fájlokat tud kezelni
  - ntfs: windows által használt, 2000 óta, (new technology file system), támogatja a jogosultságokat
  - btfs: azért van, hogy minden ökörséget meg tudjon csinálni: képes egy partición belül fájlrendszerből többet kezelni. A btrfs tud egy futó fájlrendszerrő pillanatképet csinálni. Így ha valami történik, akkor vissza tudja állítani a fájlrendszert.
  - zfs: Nagy méretű lemezeken gyors műveleteket tud végre hajtani, de nagy erőforrást (RAM-ot) eszik
  - ext: 1,2,3,4 linux által használt. A 3-as tól kezdve naplózva van, így néha lassabb, de biztonságosabb. A 4-es a legújabb, a leggyorsabb, és a legbiztonságosabb. De van, hogy 2-est választanak, hogy az gyorsabb legyen, és ne terhelje a memóriát. 
    - Ha nincs naplózás, és írás közben a gép leáll, a fájlrendszer korruptált (inkonzisztens) lesz.
      - --> Erre válasz, a naplózás: Amikor valamihez hozzányíúl akkor dirty-lesz az. Így gép indításkor, ha valelyik rendszer dirty, akkor azt lekezeli. Ezt a naplózás miatt vissza lehet vonni, és a napló bejegyzés tartalmazza, hogy mi történt. Emiatt vissza tudja állítani a rendszert, az eredeti állípotra. A naplót írja ki először, de ha ennek írása közben leáll a gép, akkor a fájlrendszer nem lesz inkonzisztens.
  - e /tmp az egy temp mappa
