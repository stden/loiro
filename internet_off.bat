rem @echo off
if %CLASS%==30 (
  echo Windows 8 - Local Network
  netsh interface ip set address name="Ethernet" static 192.168.%CLASS%.%COMP% 255.255.0.0 192.168.28.1 1
) else if %CLASS%==29 (
  echo Mac class - Local Network
  netsh interface ip set address name="Беспроводное сетевое соединение" static 192.168.%CLASS%.%COMP% 255.255.0.0 192.168.28.1 1
) else (
  netsh interface ip set address name="Local Area Connection" static 192.168.%CLASS%.%COMP% 255.255.0.0 192.168.28.1 1
  netsh interface ip set address name="Подключение по локальной сети" static 192.168.%CLASS%.%COMP% 255.255.0.0 192.168.28.1 1
)
pause