 # To count the number of occurences in the word in a set of files

#set -vx

if [ $# -eq 0 ] 
then
echo "Syntax is <$0> <word> <file1> <file2> etc"
exit 1
fi

word=$1
shift
count=0

while [ $# -ne 0 ]
do
	for wd in `cat $1`
	do
		if [ $wd = $word ]
		then
			count=`expr $count + 1`
		fi
	done
	shift
done

echo "Number of occurence of words = $count" 
