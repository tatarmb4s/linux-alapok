ip route 200.1.1.128 255.255.255.248 195.5.5.102
ip route 200.1.1.192 255.255.255.252 195.5.5.102
ip route 200.1.1.0 255.255.255.128 195.5.5.102
ip route 195.5.5.0 255.255.255.192 195.5.5.102


interface GigabitEthernet0/0
 ip address 200.1.1.129 255.255.255.248
 duplex auto
 speed auto
!
interface GigabitEthernet0/1
 ip address 195.5.5.1 255.255.255.192
 duplex auto
 speed auto
 ipv6 address FE80::1 link-local
 ipv6 address 2001:DB8:9::1/64
!
interface Serial0/3/1
 ip address 200.1.1.193 255.255.255.252