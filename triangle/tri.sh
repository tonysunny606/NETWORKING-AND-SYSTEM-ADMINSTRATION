#set -vx

if [ $# -gt 1 ]
then
echo "Syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter 1st no:"
read a
echo "Enter 2nd no:"
read b
echo "Enter 3rd no:"
read c
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
#if [ `expr $a + $b` -le $c ]
then
echo "$a $b $c cannot be sides of triangle" 
exit 2
else
echo "$a $b $c can be sides of triangle"
fi


if [ `expr $a` -eq $b -a `expr $b` -eq $c ] 
then
echo "Equilateral Triangle"
elif [ `expr $a` -eq $b -o `expr $b` -eq $c ]
then
echo "Isoscless Triangle"
else
a2=`expr $a \* $a`
b2=`expr $b \* $b`
c2=`expr $c \* $c`
if [ `expr $a2 + $b2` -eq $c2 ]
then
echo "Right angled Triangle"
else
echo "Scalene Triangle"
fi
fi 
