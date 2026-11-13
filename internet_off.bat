rem @echo off

if defined CLASS ( 
  if defined COMP (
    goto setup
  ) else (
    echo Define COMP
  )
) else (
    echo Define CLASS and COMP
   goto exit
)

goto exit

:setup
set MY=10.%CLASS%.%COMP%.1
set MASK=255.255.255.0
set GATEWAY=10.1.1.1	

if %CLASS%==30 (
  echo Windows 8 - Local Network
  netsh interface ip set address name="Ethernet" static %MY% %MASK% %GATEWAY% 1
) else if %CLASS%==29 (
  echo Mac class - Local Network
  netsh interface ip set address name="Беспроводное сетевое соединение" static %MY% %MASK% %GATEWAY% 1
) else (
  netsh interface ip set address name="Local Area Connection" static %MY% %MASK% %GATEWAY% 1
  netsh interface ip set address name="Подключение по локальной сети" static %MY% %MASK% %GATEWAY% 1
  netsh interface ip set address name="Подключение по локальной сети 2" static %MY% %MASK% %GATEWAY% 1
  netsh interface ip set address name="Wireless Network Connection" static %MY% %MASK% %GATEWAY% 1
 
)


:exit
pause
