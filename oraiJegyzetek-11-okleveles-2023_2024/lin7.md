Partivió felcsatolása:
mount /dev/sd/3 /var. -t ext4 -ro
Ez automatikusan megy, ez bootkor az /etc/fstab-ban van beállítva.
Egy sor az fstatba:
/dev/sde2 ext4
    - defaults opció
    - prioritások

Ma inkább:
uuid-<id, amit a blkid-bel szedünk ki>

Azonosítók listázása:
blkid
