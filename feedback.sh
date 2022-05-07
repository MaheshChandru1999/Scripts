read -p "Enter 1 if you are a student or 2 if you are a trainer: " Role
if [ $Role == 1 ]
then
	read -p "Enter your roll_no: " roll_no
	echo "Answer the following questions to provide feedback on trainer"
	read -p "1. Enter your name: " student_name
	read -p "2. Enter the name of trainer you want to give feedback about: " trainer_name
	read -p "3. What is your overall impression on the trainer on a scale of 1 to 5: " impression
	read -p "4. Rate the punctuality of trainer on a scale of 1 to 5: " punctuality
	read -p "5. Rate the overall course experience on a scale of 1 to 5: " rating
	echo "Student Name: $student_name
Trainer Name: $trainer_name
Overall Impression: $impression
Punctuality: $punctuality
Course Rating: $rating" > $roll_no.txt
exit
elif [ $Role == 2 ]
then
	read -p "Enter the roll number of the student whose feeback you want to read:" feedback_roll_no
	if [ -f $feedback_roll_no.txt ]
	then
		cat $feedback_roll_no.txt
	else
		echo "Student with roll number $feedback_roll_no has not provided the feedback yet"
	fi
else
	echo "Invalid Input"
fi
