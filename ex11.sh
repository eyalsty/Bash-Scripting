#! /bin/bash
#Eyal Styskin 206264749

#$1 - NAME OF FILE
#$2 - WORD TO SEARCH IN EACH LINE

counter=1
cat "$1" | while read p
do
	lineArray=(${p})
	for word in "${lineArray[@]}"
	do
		if [ "$word" == "$2" ]
		then 
		echo $counter $p
		fi
	done
	((counter++))
done
