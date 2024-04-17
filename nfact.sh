#ncr of it
fact()
{
x=$1
i=1
f=1
while [ $i -le $x ]
do 
f=`expr $f \* $i`
i=`expr $i + 1` 
done
return $f
}



#calling function
echo -n "enter value  of 'n' :"
read n
echo -n "enter value of 'r'  :"
read r
fact $n
factn=$?;echo "$n!=$factn"
fact $r
factr=$?;echo "$r!=$factr"
nmr=`expr $n - $r`
fact $nmr
factnmr=$?
rnmr=`expr $factr \* $factnmr`
ncr=`expr $factn / $rnmr`
echo "$n C  $r = $ncr "



