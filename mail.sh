#!/bin/sh
let kol=`cat /home/inspektor/chestnoe/list | wc -l`
let i=0
array=(`cat /home/inspektor/chestnoe/list`)
while [ "$i" -lt "$kol" ]
do
  f=${array[$i]}
     echo "Отправлено письмо на $f"
     mutt -e "set content_type=text/html" $f -s "Акция" < chestnoe.html
  i=$(($i+1))
done
exit 0