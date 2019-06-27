npm install
npm run prod

C:\Windows\System32\inetsrv\appcmd stop apppool /apppool.name:"betamyqa.ef.com"
ren "D:\websites\betamyqa.ef.com\bundle.js" "bundle_bkp-%date:~10,4%%date:~7,2%%date:~4,2%-%time:~0,2%%time:~3,2%.js"
copy "D:\Jenkins\workspace\betamyqa.ef.com\build\bundle.js" "D:\websites\betamyqa.ef.com\bundle.js"

C:\Windows\System32\inetsrv\appcmd start apppool /apppool.name:"betamyqa.ef.com"