if [ $# != 1 ]
then
	echo "Invalid number of arguments"
	exit 1
fi
if [ -d $1 ]
then
	echo "$1 already exists"
	echo "Pfb the list of directories that already exist:"
	ls -d */
else
	mkdir $1
	ls -d */
fi
