#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
sed -n '/Fluid/,/Drilling/p' UnitCategories.json | egrep leaf | awk -F ":" '{print $2}' | awk -F '"' '{print $2}' > /tmp/UnitCategories.tmp
sed -n '/Drilling/,/Production/p' UnitCategories.json | egrep leaf | awk -F ":" '{print $2}' | awk -F '"' '{print $2}' >> /tmp/UnitCategories.tmp
sed -n '/Production/,/EOF/p' UnitCategories.json | egrep leaf | awk -F ":" '{print $2}' | awk -F '"' '{print $2}' >> /tmp/UnitCategories.tmp
for i in `cat /tmp/UnitCategories.tmp`
do
	sed -i -r -e "s|\"${i}\", leaf: true|\"${i} (not available in Demo)\", leaf: false|g" UnitCategories.json
done
IFS=$SAVEIFS