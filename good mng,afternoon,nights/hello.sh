#display message using hello user and good moring and good after noon
hour=`date +%H`
if [ $hour -le 12 ]
then
echo "hello $USER, GOOD MORNING...."

elif [ $hour -le 16 ]
then
echo "HELLO $USER, GOOD AFTERNOON...."
elif [ $hour -le 20 ]
then 
echo "HELLO $USER,GOOD EVENING..."
else
echo "HELLO $USER,GOOD NIGHTS...."
fi    



