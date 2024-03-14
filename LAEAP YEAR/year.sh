#LEAP YEAR PROGRAM
#set -vx

clear
if [ $# -gt 1 ]
then
   echo "syntax is <0>[<year>]"
    exit 1
fi
if [ $# -ne 1 ]

then
    yr=`date +%Y`
else
  yr=$1
fi
d4=`expr $yr % 4`
d100=`expr $yr % 100`
d400=`expr $yr % 400`

if [ $d4 -eq 0  -a $d100 -ne 0 -o $d400 -eq 0 ]  
then
    echo "leap year : $yr"
else
    echo " not leap year : $yr"
fi

