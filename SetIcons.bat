:: изменение иконки текущей корзины
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /ve /t REG_SZ /d "%CD%\PopCatOpen.ico,0" /f

:: изменение иконки пустой корзины
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /v "empty" /t REG_SZ /d "%CD%\PopCatOpen.ico,0" /f

:: изменение иконки заполненной корзины
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon"^
 /v "full" /t REG_SZ /d "%CD%\PopCatClosed.ico,0" /f

:: перезапуск проводника для обновления рабочего стола
taskkill /f /im explorer.exe
start explorer.exe