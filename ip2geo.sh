#!/bin/bash
url="http://www.geoiptool.com/en/?IP="
curl $url$1 -A --user-agent "Mozilla/5.0" --silent -o tmp
cat tmp | sed -n '/Host Name/,/Postal code/p' | sed 's/<td \(.*\)">/ /g' | sed 's/<\/\(.*\)>/ /g' | sed 's/<tr>/ /g'




