#!/bin/sh

basedir="cfg"
steamlib="/media/Games/SteamLibrary"
cscfgdir="${steamlib}/steamapps/common/Counter-Strike Global Offensive/game/csgo/cfg"

for F in `find ${basedir} -type f -not -name '*.orig' | sort`
do
	F=$(echo $F | sed "s;${basedir}/;;")
	echo "Checking $F"
	targetdir="${cscfgdir}/$F" 
	test -f "${targetdir}" || echo "    Not found $F"
	git diff "${targetdir}" "${basedir}/$F" 2> /dev/null
done

