# Címzés, Elézési út, Névterek

pl: alex.szemüveg
Itt az alex a legnagyobb, azon belül van a szemüveg

pl: vm.neumann.hu
Itt visszafelé van, a .hu a legnagyobb, azon belül a neumann, azon belül a vm

A linux könyvtárakra van osztva, a könyvtárakat pedig a /-al választjuk el egymástól.
A változók is könyvtárakban vannak tárolva:
pl. fel tudom csatolni a /bin-t külön, read only-ként, és így egy vírus nem tud kárt tenni benne
a /home is külön partición van
particiók: etc, home, var, lib, tmp, bin, shin

Particionálás:
Egy lemez felosztása részekre

Felosztási típusok:
Régi: ms-dos / mbr particionálási módszer:
- az első 512 bájtba benne van a 4 partició lehetősége
- a négy kevés -> a legutolsót kinevezték kiterjesztett particiónak, az első 3 primary, az utolsó egy extended.
  - az extended fel van bontva logikai particiókra, amik láncba vannak kapcsolva, így ha el akartam érni egy alsóbb rendűt, végig kellett mennem a felsőbbeken
- legacy-nak is nevezik
GPT:
- 2*100mb területet levág az elejáről, és ezt másolja a végére: a kettő közé annyi partició kerül, amennyi tetszik, a hely tele van.
- UEFI-k ismerik

Partició formázás:
ökörszabály: egy particióba egy fájlrendszert teszek bele
Fájlrendszer: megmondja, hogy mit hogy találok

Fájlrendszerek:
- ntfs: windows által használt, 2000 óta
- fat, fat32: régi, max 4gb-os fájlokat kezel le
- ext1/ext2/ext3/ext4: tipikusan linux által használt


Linux parancs:
- `mkfs`:
  - `mkfs.ext4`: ext4-es fájl rendszerben hozódik létre, naplózva van
  - `mkfs.ext2`: néha használják, de nincs naplózva
  - `mkfs.ntfs`: ntfs fájlrendszer
  - `mkfs<>``: <>-be beírva a fájlrendszer neve, létrehozza azt

/ -> 20gb: rendszerfájlok, gyükér
/home -> 10gb: felhasználói adatok
/var -> 5gb: változó adatok
/swap -> 1gb: virtuális memória, ha elfogy a ram, akkor ide írja ki a memóriából a dolgokat, de lassú