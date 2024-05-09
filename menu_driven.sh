#menu driven

opt=0
while [ $opt -le 7 ]
do
	clear
	echo "\n1. All ordinary files\n2. All directory file\n3. All special files\n4. All files readable to User Group Owner\n5. All files writable to User Group Owner\n6. All files executable to User Group Owner\n7. All files with read write execute to Owner\n8. Exit\n"
	echo -n "Option : "
	read opt

	case $opt in

		1 ) echo "\nThe ordinary files are : \n" 
		    for file in *
		    do
                       if [ -f $file ]
			then
				echo $file
			fi
		    done
		;;

		2 ) echo "\nThe directory files are : \n" 
		    for file in *
		    do
			if [  -d $file ]
			then
				echo $file

			fi
		    done
		;;

		3 ) echo "\nThe special files are : \n" 
		    for file in *
		    do
			if [ ! -d $file -a ! -f $file ]
			then
				echo $file
			fi
		    done
		;;

		4 ) echo "\nThe files that are readable by User Group Owner : \n" 
	            for file in *
		    do
			if [ -f $file ]
			then
				user=`ls -l $file | cut -c 2-2`
				group=`ls -l $file | cut -c 5-5`
				owner=`ls -l $file | cut -c 8-8` 

				if [ $user = "r" -a $group = "r" -a $owner = "r" ]
				then
					echo $file
				fi
			fi
		    done
		;;

		5 ) echo "\nThe files that are writtable by User Group Owner : \n" 
		    for file in *
		    do
			if [ -f $file ]
			then
				user=`ls -l $file | cut -c 3-3`
				group=`ls -l $file | cut -c 6-6`
				owner=`ls -l $file | cut -c 9-9`
			
				if [ $user = "w" -a $group = "w" -a $owner = "w" ]
				then
					echo $file
				fi
			fi
		    done
		;;

		6 ) echo "\nThe files that are executable by User Group Owner : \n" 
		    for file in *
		    do
			if [ -f $file ]
			then
				user=`ls -l $file | cut -c 4-4`
				group=`ls -l $file | cut -c 7-7`
				owner=`ls -l $file | cut -c 10-10`

				if [ $user = "x" -a $group="x" -a $owner="x" ]
				then
					echo $file
				fi
			fi
		    done
		;;

		7 ) echo "\nThe files that can be read-write-execute only by Owner : \n" 
	 	    for file in *
		    do
			if [ -f $file ]
			then
				rwx=`ls -l $file | cut -c  2-4`
		
				if [ $rwx = "rwx" ]
				then
					echo $file
				fi
			fi
		    done
		;;

		8 ) echo "\n\tExitng.....\n" 

			exit 0
		;;
	esac

	echo  -n "\n\tEnter to continue........\n"
	read x
done

