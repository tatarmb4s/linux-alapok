# root / su / sudo / konténer / host / parancsértelmező / felhasználó hozzáadása
- `su` / `su -` / `su Pistike`: super user / rendszergazda (felügyeli, védi, javítja, gépet)
  - `su -`: megkapod a rendszergazdai enviroment varokat (környezeti változó)
    - pl HOME = /root
  - `su pistike`: Pistike felhasználóvá válik, ha nem vagy jogban felette, ismerned kell a jelszavát
    - pl HOME = /home/pistike
  - `su`: rendszergazda leszel, de nem kapod meg a admin környezeti változókat
    - pl HOME = /home/te
- `sudo`:  super user do parancsok végrehajtása
  - `sudo -i`: root felhasználóvá válik

A root külön partición lakik, hogy ha a /home nem menne, akkor ő tudja kezelni.

- `pwm`: jelenlegi mappa környezeti változója
- `env`: környezeti változók listázása

## Parancsértelmező:
- `bin/bash`: bash parancsértelmező

## Contener versus host program:
- Ami elválasztja a belső és a kölsőt, az a névtér (namespace)
- a konténer nem tud hozzáférni a gazda géphez
- pid: process identifier
  - 1-es: a legfontosabb folyamat, amin keresztül a többi folyamat elindul
  - a gyerek örökli a szülő jogait, hacsak nem a bejelentkezésnél nem korlátozzák le
  - egyszerűbb a konténer, mint a VM, és általában azt választják
  - DE! Pl nem módosíthatom a konténerben a lemez particiókat, stb -> ilyenkor vm-er futtatunk.


## Miért kell su és sudo?
- A `sudo` csak akkor megy, ha a felhasználó a sudoers fájlban szerepel
  - tartalmazza a részletes permission kezelést az userekre / groupokra
  - `sudo <parancs>`: a rendszer kéri a jelszót !FONTOS: A jelszó az én useremé, nem a rooté!
    - kikapcsolható egyes parancoskra
  - sudo csoport: A sufoers fájl tartalmazza, hogy csak azok lehetnek adminok, akik benne vannak a sudo csoportban.

## Felhasználó hozzáadása

`adduser pisti`
`adduser pisti sudo`
  Ha nem megy:
    1. `apt update`
    2. `apt install sudo`