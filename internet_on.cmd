echo ������ DHCP �⮡� ࠡ�⠫ ���୥�
netsh interface ip set address "Ethernet" dhcp
netsh interface ip set address "Local Area Connection" dhcp
netsh interface ip set address "������祭�� �� �����쭮� ��" dhcp
if %CLASS%==29 (
  echo Mac class - Local Network
  netsh interface ip set address name="���஢����� �⥢�� ᮥ�������" dhcp
)
pause

