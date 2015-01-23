echo Включаю DHCP чтобы работал Интернет
netsh interface ip set address "Ethernet" dhcp
netsh interface ip set address "Local Area Connection" dhcp
netsh interface ip set address "Подключение по локальной сети" dhcp
if %CLASS%==29 (
  echo Mac class - Local Network
  netsh interface ip set address name="Беспроводное сетевое соединение" dhcp
)
pause

