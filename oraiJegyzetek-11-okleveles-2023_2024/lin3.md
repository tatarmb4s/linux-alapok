# gép fel setupolása
- Mindenki megkapta a saját proxmox vmjét, és jelszavát, ennek mintáját biztonsági okokból nem írom ki a jegyzetbe.

# linuxos gép feltörése
- indításkor van egy kernel indító parancsa
  - init=/bin/bash: kapsz egy rendszer gazdai részt
  - van egy alap root jelszó, amit le kell cserélni:
    - user: `root`
    - pw: `root1234`
  
1. bejelentkezés után hozzá adom magam a systemhez:
   1. `add user <uname> `
      1. Kér egy jelszót majd, oda megy a pw.
   2. `exit`: kiléptet az admin terminálból
2. be kell jelentkezni
   1. abba az userbe jelentkezek be amit létre hoztam
   2. ha admin akarok lenni, akkor su-val leszek
3. sudo feltelepítése:
   1. `apt update`: letölti egy netes repoból a csomag listákat
   2. `apt install sudo`: telepíti a sudo-t


# egyéb useres dolgok:
- Jelszó csere: `passwd <user>`
  - kéri az új pw-t
  
1. html fájl létre hozása
```bash
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Megy.</h1>
    <img src="test.png" alt="hehe">
</body>
</html>' > test.html
```
2. `python3 -m http.server 8080 &`: a & annyit tesz, hogy a bck ban fut, fg-vel tudom előtértbe hozni, bg-vel hátra
3. `wget <url>`
   