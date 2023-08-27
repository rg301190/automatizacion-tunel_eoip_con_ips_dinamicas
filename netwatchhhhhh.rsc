/tool netwatch
add comment="agrega comentario" host=192.168.55.2 interval=2s up-script="/syst\
    em scheduler enable \"agrega comentario de exito\"\r\
    \n:delay 17\r\
    \n/system scheduler disable \"agrega comentario de exito\"\r\
    \n"
add comment="DESABILITA Y HABILITA TAREAS CON DELAY" down-script="/system sche\
    duler enable \"crea tunel nuevo\"\r\
    \n:delay 1\r\
    \n/system scheduler enable \"elimina tunel\"\r\
    \n" host=192.168.55.2 interval=2s up-script="/system scheduler disable \"c\
    rea tunel nuevo\"\r\
    \n:delay 1\r\
    \n/system scheduler disable \"elimina tunel\"\r\
    \n\r\
    \n"
