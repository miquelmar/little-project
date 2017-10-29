answered=0

while [[ $answered -eq 0 ]]
do
	n_files=$(ls | wc -l)

	echo "How many files are in this directory? "

	read guess

	if [[ $guess =~ ^[0-9]+$ ]]
	then
		if [[ $guess -lt $n_files ]]
		then
			echo "too low"
		elif [[ $guess -gt $n_files ]]
		then
			echo "too big"
		else
			echo "Congratulations"
			answered=1
		fi
	else
		echo " enter a number please"
	fi

done