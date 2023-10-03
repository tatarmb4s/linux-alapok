# Miért használják a sudo-t nagy szeretettel?
- ubuntuban: nincs a rootnak jelszava, és nem is tud belépni. Helyette a sudo-t használja.
- Fájl helye: `/etc/sudo`: nem szokás szerkezteni, hogy ne zárjuk ki magunkat:
  - Ezért: `visudo`: nem direkt az `/etc/sudo`-t módosítja, hanem egy másoltatot, és a felülírás előtt egy szintaktikai ellenőrzést tesz.
- `%sudo ALL=(ALL:ALL) NOPASSWD:ALL`
  - ALL=: host
  - ALL:ALL: az első ALL az user, második a group
  - 
- `%users`: minden felhasználó a tagja lesz, ha ennek adok egy jogot, minden user megkapja.


# Csomagfájlok:
- `apt update`: csomaglisták frissítése
- `apt install` csomagok telepítése
- `apt remove` csomag törlése
- `apt search` csomag keresése
  - `| grep -e "<kereső szó>"`: keresés
- `apt clean` csomag cache törlése
- `apt autoremove` nem használt csomagok törlése

# alapok

`|`: parancsok összefűzése, úgy ,hogy az előző kimenetet megkapja

Demonok:
- systemd: system "demon"
0. stdin: standard input: beviteli csatorna: billentyűzet
1. stdout: standard output: kimeneti csatorna: monitor
2. stderr: standard error: hibacsatorna: monitor
A demonok közt memory pufferek vannak, amiket a demonok használnak, abban tárolják az infót amíg nem dolgozzák fel, onnen megy tovább máshova. 
pl: stderr puffer -> monitor
DE: a puffereket irányíthatom máshova, pl egy fájlba, vagy egy másik programba.
pl: stderr puffer -> log.file

- `|`: átirányítás: a bal oldali kimenetet a jobb oldali helyre irányítja
- `>`: fáljba irányítás, felülírja a fájlt
- `>>`: fájlba irányítás, de nem írja felül a fájlt, hanem hozzáfűzi
- `<`: fájlból olvasás

Küldhetek különbüző csatornákból más helyekre:

`ls-l | grep .txt 1> txt_files.txt 2> error.txt`
Az alapértemezett az 1-es csatorna, ezért a `1`-et elhagyhatom:

`ls-l | grep .txt > txt_files.txt 2> error.txt`

`apt autoremove 2> dev/null 2> error.txt`: a dev/null egy virtuális fájl, amibe nem lehet írni, de olvasni sem, ezért a kimenetet oda irányítva, nem fogja a kimenetet látni a felhasználó.
pl: nem akarok hibát látni, akkor az oda irányítom
`apt autoremove 2> dev/zero 2> error.txt`: a dev/zero egy virtuális fájl, amibe nem lehet írni, de olvasni lehet, és mindig 0-t fog vissza adni, ezért a kimenetet oda irányítva, nem fogja a kimenetet látni a felhasználó.