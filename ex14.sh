#! /bin/bash
#Eyal Styskin 206264749

#$1 - PERSON'S NAME
#$2 - NAME OF FILE

total=0
cat "$2" | ( while read p
do
	if [[ $p == *"$1"* ]]
	then 
		lineArray=(${p})
		value=${lineArray[2]}
		total=$(( $value + $total ))
		echo $p
	fi
done
echo Total balance: $total )
