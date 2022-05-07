if [ -d "$1" ]
then
	git -C "$1" status 1>/dev/null 2>/dev/null
	if [ $? != 0 ]
	then
		echo "Given path to directory exists but it is not a Git repository"
	else
		echo "Given path to directory exists and it is a Git repository"
	fi
else
	echo "Given path to directory doesnot exist"
fi
