if [ $# != 2 ]
then
	echo "Enter only two numbers as input"
else
	echo "Addition of $1 and $2 gives $(($1+$2))
Subtraction of $1 and $2 gives $(($1-$2))
Multiplication of $1 and $2 gives $(($1*$2))
Division of $1 and $2 gives a quotient of $(($1/$2)) and a remainder $(($1%$2))"
fi
