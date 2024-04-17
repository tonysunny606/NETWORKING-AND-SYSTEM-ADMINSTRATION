#set -vx
if [ $# -ne 1 ]
then
echo "sytax is <$0> <number>"
exit 1
fi
fact()
{
n=$1
i=1
f=1
while [ $i -le $n ] 
do 
f=`expr $f \* $i`
i=`expr $i + 1`
done
return $f
}
fact $1
echo "$1! = $?"

