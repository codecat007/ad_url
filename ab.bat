@echo off
del /f b.txt ab.txt >nul
copy /y ad.list b.txt
sed -i "s/HOST, /||/g" b.txt
sed -i "s/HOST-KEYWORD, /||/g" b.txt
sed -i "s/HOST-SUFFIX, /||/g" b.txt
sed -i "s/, REJECT/^/g" b.txt
rem ɾ��ǰx��ע������
sed -i "1,6d" b.txt
rem ɾ������
sed -i "/^$/d" b.txt
rem ɾ������#ע����
sed -i "/^#/d" b.txt
rem �ϲ�
copy /y a.txt + b.txt ab.txt
del /f b.txt >nul
echo OK
ping -n 3 127.0.0.1>nul
exit