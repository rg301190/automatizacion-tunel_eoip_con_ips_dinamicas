/system scheduler
add disabled=yes interval=20s name="elimina tunel" on-event=\
    "/interface eoip remove numbers=eoip-tunnel1" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add disabled=yes interval=1s name="crea tunel nuevo" on-event="/interface eoip\
    \_add allow-fast-path=no comment=\"creando tunel a router_torre_fabian AGU\
    ANTA UN TOQUE! \" ipsec-secret=PASSWORDKJHSD0 \\\r\
    \n    local-address=[:resolve b9000a118f5f.sn.mynetname.net] mac-address=0\
    2:1E:7F:1D:19:E1 name=\\\r\
    \n    eoip-tunnel1 remote-address=e2090d012c3a.sn.mynetname.net tunnel-id=\
    55\r\
    \n\r\
    \n/ip address add address=192.168.55.1/24 interface=eoip-tunnel1 " \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add disabled=yes interval=11s name="agrega comentario de exito" on-event="/int\
    erface set eoip-tunnel1 comment=\"<CONEXION EXITOSA PERRO>\"\r\
    \n:delay 3\r\
    \n/interface set eoip-tunnel1 comment=\"<DE UNA PAPI>\"\r\
    \n:delay 3\r\
    \n/interface set eoip-tunnel1 comment=\"<TUNEL A ROUTER FABIAN>\"" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
