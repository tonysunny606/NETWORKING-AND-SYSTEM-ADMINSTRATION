 # Compare 2 files if they are same (identical) then delete one

if [ $# -ne 2 ]
then
	echo "Syntax is <$0> <file1> <file2>"
	exit 1
elif [ -f $1 -a $2 ]
then
	cmp $1 $2 >/dev/null
	if [ $? -eq 0 ]
	then
		echo "Files are same."
		rm -f $1
		echo "\n\t$1 is deleted....."
	else
		echo "\n\tFile $1 and $2 are not same"
	fi
else
	echo "\n\tFiles are not ordinary files."
fi
