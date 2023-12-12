pufferelt ip címek elkerülése
ip a | more
ip a | less
vagy pedig
ip a > ipk.txt

ip a | grep inet


Expose docekr file írásakor: annyit tesz, kitenni:
- valahol, egy entry pointba ami egy parancs (ami szerepelhet listaként is) ami elindít egy szolgáltatást, pl az 5000-es porton.
- az expose-al felkészítem a konténert a portokra.
  - Ha nincs szolgáltatásom akkor az expose nem ér semmit.
  - Ha van szolgáltatásom, de nincs expose akkor a szolgáltatásom nem lesz elérhető.


Feladat:
az egyik elindít egy lighthttpd szervert
- kis erőforrást evő webserver
- egy index.html-t szolgál ki

kell hozzá egy -v külső könyvtár:belső könyvtár


docker run -p 8000:8080 -v /home/ttrmb/lighttpd/www:/var/www/htdocs avhost/docker-lighttpd

2. feladat

ghost blog engine futtatása
egy db docker copose yaml file kell, ezt a dockerhubról le lehet szedni
- a docker-compose.yml file-ban meg kell adni a portokat
- elindítani: docker-compose up -d


