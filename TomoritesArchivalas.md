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
    tar -cvf <name>.tar <name>: <br>
    `tar -cvf <name>.tar <name>`
    - Kapcsolók:
      - `-c` create: létrehozza az archívumot
      - `-v` verbose: mutatja mit csinál
      - `-f` file: fájlba írja
- Archiválás tömörítve
    tar -czvf <name>.tar.gz <name>: <br>
    `tar -czvf <name>.tar.gz <name>`
    - Kapcsolók:
      - `-c` create
      - `-z` gzip: tömörítési algoritmus
      - `-v` verbose
      - `-f` file
- Archiválás tömörítve
    tar -cjvf <name>.tar.bz2 <name>: <br>
    `tar -cjvf <name>.tar.bz2 <name>`
    - Kapcsolók:
      - `-c` create
      - `-j` bzip2: tömörítési algoritmus
      - `-v` verbose
      - `-f` file
- Archiválás tömörítve
    tar -cJvf <name>.tar.xz <name>: <br>
    `tar -cJvf <name>.tar.xz <name>`
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