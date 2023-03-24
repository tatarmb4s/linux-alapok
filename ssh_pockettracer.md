# SSH beállítások
1) Router config
   1) saját hostname kell: (config)# `hostname <name>`
   2) saját egyedi name: sudn
      1) Kell saját domain name, és hostname
      2) cmd: `ipv domain-name <test.lan>`
   3) SSH generálás és titkosítás: RSA algoritmus
      1) cmd: `crypto key generate rsa`
      2) biztonságos cmd `crypto key generate rsa general-keys modulus <360-4096, avg: 2048>`
   4) SSH frissítése 1.9 ről 2.0-ra
      1) cmd: `ip ssh version 2`
   5) ssh engedélyezése routeren:
      1) user és pw állítás: `username <name> password <pw>`
      2) pw titkosítás: `service password-encryption`
      3) cmd: `line vty 0 15`
         1) cmd: `transport input ssh`
         2) cmd: `login local`
   6) védelem:
      1) ssh timeout: `ip ssh timeout <1-120 sec>`
      2) auth retrie: `ip ssh authentication-retries <1-10>`
   7) domain név alapon csatlakozás: 
      1) dns szerveren kell beállítani a domain név alapján a router ip címét
   8) mentés: `copy running-config startup-config` vagy `do <wr/write>`

2) belépés
   1) ciscos gépről:
      1) cmd: `ssh -i <name>@<ip>`