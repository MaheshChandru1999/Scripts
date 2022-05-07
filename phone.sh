read -p "Enter your phone number without country code: " number
if [ ${#number} == 10 ]
then
	if [ ${number:0:1} == 9 ]
	then
		echo "Your service provider is Vi"
	elif [ ${number:0:1} == 8 ]
	then
                echo "Your service provider is Airtel"
	elif [ ${number:0:1} == 7 ]
        then
                echo "Your service provider is BSNl"
	elif [ ${number:0:1} == 6 ]
        then
                echo "Your service provider is Jio"
        elif [[ ${number:0:1} == 5 || ${number:0:1} == 4 || ${number:0:1} == 3 || ${number:0:1} == 2 || ${number:0:1} == 1 || ${number:0:1} == 0 ]]
        then
                echo "You have entered an invalid number"
	fi
else
	echo "Please enter phone number with 10 digits"
fi


