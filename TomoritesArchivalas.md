Archiválás: biztonsági mentés
Tömörítés: mértbeli módosítás a fájlokon, hogy kisebbek legyenek

Program: tar
Egyszerre archivál, és töröl, mindent tud

# Archiválás tar-al:

## Táblán:
- tar -cf a.tar
  - `tar -cf <a>.tar <könyvtár amit archiválunk, a teljes könyvtár>`

## Archiválás

### Archiválás
- Archiválás
    tar -cvf <itemName> <name>.tar <br>
    `tar -cvf <itemName> <name>.tar`
    - Kapcsolók:
      - `-c` create: létrehozza az archívumot
      - `-v` verbose: mutatja mit csinál
      - `-f` file: fájlba írja
- Archiválás tömörítve
    tar -czvf <itemName> <name>.tar.gz <br>
    `tar -czvf <itemName> <name>.tar.gz`
    - Kapcsolók:
      - `-c` create
      - `-z` gzip: tömörítési algoritmus
      - `-v` verbose
      - `-f` file
- Archiválás tömörítve
    tar -cjvf <itemName> <name>.tar.bz2 <br>
    `tar -cjvf <itemName> <name>.tar.bz2`
    - Kapcsolók:
      - `-c` create
      - `-j` bzip2: tömörítési algoritmus
      - `-v` verbose
      - `-f` file
- Archiválás tömörítve
    tar -cJvf <itemName> <name>.tar.xz <br>
    `tar -cJvf <itemName> <name>.tar.xz`
    - Kapcsolók:
      - `-c` create
      - `-J` xz
      - `-v` verbose
      - `-f` file

### Kicsomagolás
- Kicsomagolás
    tar -xvf <name>.tar: <br>
    `tar -xvf <name>.tar`
    - Kapcsolók:
      - `-x` extract: kicsomagolja az archívumot
      - `-v` verbose: mutatja mit csinál
      - `-f` file: fájlból olvas
      - `-C <name>` change directory: ide rakja a kicsomagolt fájlokat
      - `-t` list: kilistázza a fájlokat, megmutatja a tartalmát
- Tar.gz kicsomagolás
    tar -xzvf <name>.tar.gz: <br>
    `tar -xzvf <name>.tar.gz`
    - Kapcsolók:
      - `-x` extract
      - `-z` gzip
      - `-v` verbose
      - `-f` file
      - `-C <name>` change directory
      - `-t` list
- Tar.bz2 kicsomagolás
    tar -xjvf <name>.tar.bz2: <br>
    `tar -xjvf <name>.tar.bz2`
    - Kapcsolók:
      - `-x` extract
      - `-j` bzip2
      - `-v` verbose
      - `-f` file
      - `-C <name>` change directory
      - `-t` list
- Tar.xz kicsomagolás
    tar -xJvf <name>.tar.xz: <br>
    `tar -xJvf <name>.tar.xz`
    - Kapcsolók:
      - `-x` extract
      - `-J` xz
      - `-v` verbose
      - `-f` file
      - `-C <name>` change directory
      - `-t` list

## Archiválás több fájllal
- Archiválás több fájllal
    tar -cvf <name>.tar <name1> <name2> <name3>: <br>
    `tar -cvf <name>.tar <name1> <name2> <name3>`
    - Kapcsolók:
      - `-c` create
      - `-v` verbose
      - `-f` file
- Archiválás több fájllal
    tar -czvf <name>.tar.gz <name1> <name2> <name3>: <br>
    `tar -czvf <name>.tar.gz <name1> <name2> <name3>`
    - Kapcsolók:
      - `-c` create
      - `-z` gzip
      - `-v` verbose
      - `-f` file
- Archiválás több fájllal
    tar -cjvf <name>.tar.bz2 <name1> <name2> <name3>: <br>
    `tar -cjvf <name>.tar.bz2 <name1> <name2> <name3>`
    - Kapcsolók:
      - `-c` create
      - `-j` bzip2
      - `-v` verbose
      - `-f` file

# Zip
- Zip
    zip <name>.zip <name>: <br>
    `zip <name>.zip <name>`
    - Kapcsolók:
      - `-r` recursive: rekurzív, bejárja a könyvtárakat
      - `-q` quiet: nem mutatja a részleteket
      - `-9` maximum compression: maximum tömörítés
      - `-g` grow: növeli a tömörített fájlt, nem írja felül, hanem hozzáadja
      - `-u` update: frissíti az archívumot
      - `-v` verbose: mutatja a részleteket
      - `-m` move: törli a fájlokat
      - `-d` delete: törli a fájlokat
      - `-n` new: létrehozza az új archívumot
    - Megjegyzés:
      - Képes fájlokat és könyvtárakat is bezippelni

Feladat:
/home/tanulo/archivalas.txt
1. Csomagold ki a /home/tanulo/mc.tar.bz2 állományt a home könyvtáradba!
2. a. Készíts .tar.gz tömörített archívumot az src könyvtárról src.tar.gz néven!
   b. Készíts .tar.bz2 tömörített archívumot a config könyvtárról config.tar.bz2 néven!
3. Archiváld a két tömörített fájlt mc.tar néven!
4. Tömörítsd be .zip formátumba az mc.tar archívumot mc.zip néven!
5. Hozd létre a home könyvtáradba az 'archiv' könyvtárat, és lépj bele!
6. Csomagold ki ide a .zip fájlt, majd a benne lévő .tar-t, majd a benne levő .tar.bz2 fájlt!
7. Kicsomagolás NÉLKÜL keress rá a "[Cc]ommander" kifejezésre mindkét csomagban!