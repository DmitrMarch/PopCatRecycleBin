:: ����������� ��������� �������
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /ve /t REG_EXPAND_SZ /d "%SystemRoot%\\System32\\imageres.dll","-55" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /v "empty" /t REG_EXPAND_SZ /d "%SystemRoot%\\System32\\imageres.dll","-55" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /v "full" /t REG_EXPAND_SZ /d "%SystemRoot%\\System32\\imageres.dll","-54" /f

:: ���������� ���������� ��� ���������� �������� �����
taskkill /f /im explorer.exe
start explorer.exe