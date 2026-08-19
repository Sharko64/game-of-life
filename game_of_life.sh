#!/usr/bin/env bash

ROWS=10	
COLUMNS=26

function border
{
	echo -ne '\t '
	for (( i = 0; i < $COLUMNS + 2; i++ ))
	do
  	echo -ne '+'
	done
	echo -ne '\n'
}

function index
{
	line=$(seq 65 `expr $COLUMNS + 64` | awk '{printf("%c",$1)}')
	echo -ne '\t  '
	echo -n $line
	echo -ne '\n'
}

function main
{
	clear
	echo -ne '\n»»»GAME OF LIFE«««\n\n'
	index
	border

	for (( i = 0; i < $ROWS; i++ ))
	do
		if [ $i -eq 0 ]
		then
			echo -ne '\t0+'
			for (( j = 0; j < $COLUMNS; j++ ))
			do
    				printf '\xE2\x96\x88'
    			done
			echo -ne '+\n'

		elif [ $i -eq `expr $ROWS - 1` ]
		then
			echo -ne '\t'
			echo -n $i
			echo -ne '+'
			for (( j = 0; j < $COLUMNS; j++ ))
                	do
                        	printf '\xE2\x96\x88'
                	done
			echo -ne '+\n'
		else
			echo -ne '\t'
			echo -n $i
			echo -ne '+'
			for (( j = 0; j < $COLUMNS; j++ ))
                	do
                        	printf '\xE2\x96\x88'
                	done
			echo -ne '+\n'
		fi
	done

	border
}

main

# DEBUG `bash -x <script-name>`