#! /usr/bin/bash -x

#Exemplui

#set -x

file=/home/student/dan
trap "rm -f $file ; exit " 2 #0  15

#trap "echo Exist command is detected" 0
trap "echo CTRL+C detected" SIGINT # sau 2
#echo "CTRL+Z=KILL nu merge prins"
#trap "echo Kill detected" SIGKILL # sau 9

echo "Hello World"
echo "Forul merge pana la 100 si se opreste automat la 10 dar apasa ctrl+C sa vezi"

echo "PID= $$"
for (( i=0 ; i<=100 ; i++ ))
do
	sleep 2
	if (( $i == 10 ))
	then
		exit 2
	fi
	echo $i
done

#set +x



