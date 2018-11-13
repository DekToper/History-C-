#! /bin/bash
B="\033[34m"
G="\033[32m"
E="\033[0m"

function main()
{
while true;
do
echo -e "$G 1)User:"
echo -e "$G 2)Time:"
echo -e "$G 3)Data:"
echo -e "$G 4)Online_Time:"
echo -e "$B 5)Next_Page:"
read x
clear
case $x in
1)
echo -e "$B User: $USER\n $E"
;;
2)
echo -e "$G Time: `date +"%T"`" < File
;;
3)
echo -e "$B Data: `date +"%F"`\n" < File
;;
4)
echo -e "$G Online_Time: `uptime -p` $E\n" < File
;;
5)
second
;;
esac
done
}


function second()
{
while true;
do
echo -e "$G 1)HomeDir:"
echo -e "$G 2)ActivUser:"
echo -e "$G 3)Ip:"
echo -e "$G 4)Log:"
echo -e "$B 5)Back_page"
read y
clear
case $y in
1)
echo -e "$B HomeDir: `df -h $HOME` $E\n"
;;
2)
echo -e "$G ActiveUser:\n`w`\n"
;;
3)
echo -e "$B I`ifconfig enp0s3 | grep -o "net .*[1-9]  "`$E\n"
;;
4)
echo -e "$G Log: \n`tail -10 /var/log/secure` $E \n"
;;
5)
main
;;
esac
done
}
main
