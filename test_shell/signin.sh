#!/bin/bash
realName="gbj112"
realpasswd="wxwwcnm"
i=0
j=0
while true
do
read -p "Please input name:" name
if [ "$name" = "$realName" -a $i -lt 3 ];then
    #echo "Name is true"
    while true
    do
    read -p "Please input password:" password
    if [ "$password" = "$realpasswd" -a $j -lt 3 ];then
        echo "Sign in success"
        exit 0
    else
        let j=j+1
        if [ $j -eq 3 ];then
            echo "U have input Password 3 times"
            break
        fi
        echo -n "Password wrong, u can try "
        leftj=`expr 3 - $j`
        echo "$leftj times"
    fi
    done
    break
#else [ "$name" != "realName" ];then
else
    let i=i+1
    if [ $i -eq 3 ];then
        echo "3times wrong"
        break
    fi 
    echo -n "Name wrong, u can try "
    left=`expr 3 - $i`
    echo "$left times"
fi
done
