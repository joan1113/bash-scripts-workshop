#!/bin/bash

grep '^[A-Z]' passwd | cut -d: -f1

until getent passwd "$user" > /dev/null; do
	echo "Introduce a username: "
	read user
	if ! getent passwd "$user" > /dev/null; then
		echo "Error: No valid user"
	fi
done

getent passwd "$user"
