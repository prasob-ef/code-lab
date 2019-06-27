@echo on
echo installing node modules...
call npm install || goto :error
echo building project..
call npm run build || goto :error
echo stopping code-lab.localhost.com app pool..
call C:\Windows\System32\inetsrv\appcmd stop apppool /apppool.name:"code-lab.localhost.com" || goto :error
echo copying file to F:\_Localhost\code-lab.localhost.com
call xcopy "C:\Program Files (x86)\Jenkins\workspace\code-lab_develop\build" "F:\_Localhost\code-lab.localhost.com\" /y || goto :error
call attrib -r +s drive: F:\_Localhost\code-lab.localhost.com\*.* /s
echo starting code-lab.localhost.com app pool..
call C:\Windows\System32\inetsrv\appcmd start apppool /apppool.name:"code-lab.localhost.com" || goto :error

:error
exit /b %errorlevel%