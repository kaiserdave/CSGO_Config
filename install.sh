#!/bin/sh

export steamdir="${HOME}/.steam/steam/userdata"
for userid in $(ls $steamdir)
do
	export D="${steamdir}/${userid}/730/local/cfg"
	if [ -d "${D}" ]
	then
		cp ./cfg/*.cfg "${D}"
	else
		echo "${D} not found"
	fi
done
