#!/bin/sh
let kol=`cat /home/user/test/list | wc -l`
let i=0
array=(`cat /home/user/test/list`)
while [ "$i" -lt "$kol" ]
do
  f=${array[$i]}
     echo "Отправлено письмо на $f"
     mutt -e "set content_type=text/html" $f -s "Акция" < test.html
  i=$(($i+1))
done
exit 0
