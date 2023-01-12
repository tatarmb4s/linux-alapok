## Helpek
- Manuál manuiáljának megnyitása: `man man`
- Paracs manuiáljának megnyitása: `<parancs> man`
- parancsos szintaktika segítség: `<paracs> -help`
- másik help parancs: `info <parancs>`
A help parancsok programonként változnak. A `man` és az `info` programonként változik attól függően a program írója mit preferált. Mi általában a`man`-t fogjuk használni. Amikor a manuált előhoztuk a nyilakkal tudjuk kérni a következő oldalt és a `q` val tudunk kilépni

## Kapcsolók

### Példa
- `rmdir`
- `rm <> -r -f`
### egyéb
- `r` reklúzívan
- `f` force
- `v` mutasd mit törölsz
- `/` gyökér könyvtár

**Konzol zárolása:** `vlock` <br>

## Linuxos tudnivalók
Bármi lehet könyvtárnév, pl `a.txt` is lehet könyvtár. A könyvtárakat a `/` jel jelöli. A `.` jel a jelenlegi könyvtárt jelöli, a `..` pedig a szülő könyvtárat. A `~` jel a home könyvtárat jelöli. A `*` jel minden fájlt jelöli.

## Parancsok

### Mappa és fájlműveletek
- Command example:
    dos = linux: <br>
    dir = ls
- Listázás
    dir = ls: <br>
    - `ls` sima listázás
    - `ls -a` összes file listázása
    - `ls -la` összes file listázása részletesen
    - `ls -l` részletes listázás
    - Listázási ikonok:
      - d: könyvtár
      - -: file
      - |: link
- Make Directory
    - md = mkdir: <br>
    `mkdir <name>`
    - Több könyvtár létrehozása egyszerre egymásban<br>
    `mkdir -p <name>/<name>`
- Change Directory
    cd = cd: <br>
    `cd <name>`
- Print Working Directory
    cd (simán semmi egyéb nélkül) = pwd: <br>
    `pwd`
- Remove Directory
    rd = rmdir: <br>
    `rmdir <name>`
- Create File: fájl létrehozása ha nem létezik, ha létezik akkor nem csinál semmit. Ha létező fájlt írunk be neki, akkor a létrehozási és módosítási dátumot aznapra állítja <br>
    type nul > <name>: <br>
    `touch <name>`
- Remove File
    del = rm: <br>
    `rm <name>`
    - kapcsolók:
      - `-r` rekúzívan töröl, az alkoönyvtárakon végigmegy, és onnan felfelé törli a fájlokat és könyvtárakat
      - `f` force, nem kér rájuk a megerősítést
      - `v` verbose, mutatja mit töröl
- Copy File
    copy = cp: <br>
    `cp <name> <name>`
    - Kapcsolók:
      - `-r` rekúzívan másol
- Move File
    move = mv: <br>
    `mv <name> <name>`
    - Másol és töröl, azaz áthelyezi. Illetve ha nem adok meg helyet hogy hova tegye, akkor átnevezi
- Rename File
    ren = mv: <br>
    `mv <name> <name>`

### Még nincs befejezve
- Edit File
    nano <name>: <br>
    `nano <name>`
- Search File
    find <name>: <br>
    `find <name>`
- Search File Content
    grep <name>: <br>
    `grep <name>`


- szövegszerkeztő:
    - `nano` Egyszerű, (^karakter az = CTRL, a billentyűkombinációknál)
    - `mcedit` (F1, F2, F3)
    - `emach`: összetett, de sok lehetőséggel, syntax highlight, stb. CTRL billentyűkombinációk vannak, de nem használjuk az EMERALD-on
    - `vim / vi`: összetett, de sok lehetőséggel, syntax highlight, stb.
      - Szöveg bevitel: :i
      - kilépés a szövegbeviteli módból: (ESC, ESC)
      - parancsok:
        - `:w` mentés
        - `:w <filename>` mentés más néven
        - `:x` mentés és kilépés
        - `:wq` mentés és kilépés
        - `:q` kilépés
        - `:q!` kilépés mentés nélkül: menekülés