npm install
npm run prod

C:\Windows\System32\inetsrv\appcmd stop apppool /apppool.name:"code-lab.localhost.com"

copy "C:\Program Files (x86)\Jenkins\workspace\code-lab.localhost.com" *.* "F:\_Localhost\code-lab.localhost.com"

C:\Windows\System32\inetsrv\appcmd start apppool /apppool.name:"code-lab.localhost.com"