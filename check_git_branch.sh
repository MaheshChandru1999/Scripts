if [ $# == 2 ]
then
	if [ -d "$1" ]
	then
		git -C "$1" status 1>/dev/null 2>/dev/null
		if [ $? != 0 ]
		then
			echo "The given path to directory exists but it is not a Git repository"
		else
			git -C "$1" show-ref refs/heads/$2  1>/dev/null 2>/dev/null
			if [ $? == 0 ]
			then
				echo "The given path exists and it is a Git repository. Branch $2 exists"
			else
				echo "The given path exists and it is a Git repository. Branch $2 does not exist"
				git -C "$1" checkout -b $2  1>/dev/null 2>/dev/null
				echo "MY GIT COMMIT FROM SCRIPT" > $1/script_file.txt 
				git -C "$1" add .  1>/dev/null 2>/dev/null
				git -C "$1" commit -m "Commit from script"  1>/dev/null 2>/dev/null
				git -C "$1" push --set-upstream origin $2  1>/dev/null 2>/dev/null
				echo "Branch $2 created with a file, commited to local repository and pushed to remote repository"
			fi
		fi
	else
		echo "Given path to directory does not exist"
	fi
else
	echo "Provide path to directory and branch name as two inputs"
fi
