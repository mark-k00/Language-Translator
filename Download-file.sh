#!/bin/sh
#echo getting to download file
#echo
#echo $SRCLANG
#echo

if [ "$SRCLANG" = "EN" ] && [ "$TRGLANG" = "ES" ]; then 
#	echo coming into 1
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/EN-ES.csv" --output EN-ES.csv
#	sh RANDOMSELECT.sh
	elif [ "$SRCLANG" = "ES" ] && [ "$TRGLANG" = "EN" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/ES-EN.csv" --output ES-EN.csv
#		echo here 2
	elif [ "$SRCLANG" = "GA" ] && [ "$TRGLANG" = "EN" ]; then
#		echo here 3
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/GA-EN.csv" --output GA-EN.csv
	
	elif [ "$SRCLANG" = "EN" ] && [ "$TRGLANG" = "GA" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/EN-GA.csv" --output EN-GA.csv
	
	elif [ "$SRCLANG" = "FR" ] && [ "$TRGLANG" = "DE" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/FR-DE.csv" --output FR-DE.csv
	
	elif [ "$SRCLANG" = "DE" ] && [ "$TRGLANG" = "FR" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/DE-FR.csv" --output DE-FR.csv
	
	elif [ "$SRCLANG" = "ES" ] && [ "$TRGLANG" = "FR" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/ES-FR.csv" --output ES-FR.csv
	
	elif [ "$SRCLANG" = "FR" ] && [ "$TRGLANG" = "ES" ]; then
	curl "https://www.computing.dcu.ie/~dshterionov/Lectures/ca114/2019_2020_project/data/FR-ES.csv" --output FR-ES.csv
	else 
		echo "Error language not found"
fi