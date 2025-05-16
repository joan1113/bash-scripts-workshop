#!/bin/bash

options=("rock" "paper" "scissors")
flag=0

while [[ "$flag" -eq 0 ]]; do
    	echo "Elige: rock, paper, scissors"
    	read user

    	machine=${options[$((RANDOM % 3))]}
    	echo "Máquina eligió: $machine"

    	if [[ "$user" == "$machine" ]]; then
        	echo "Empate"
    	elif [[ "$user" == "rock" && "$machine" == "scissors" || "$user" == "paper" && "$machine" == "rock" || "$user" == "scissors" && "$machine" == "paper" ]]; then
        	echo "¡Ganaste!"
    	else
        	echo "Perdiste"
    	fi

    	echo "¿Quieres jugar otra vez? (s/n)"
    	read again
	if [[ "$again" != "s" ]]; then
		flag=1
	fi
done
