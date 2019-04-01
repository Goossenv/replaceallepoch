for i in $(grep -o '[0-9]\{12,13\}' *.log | grep -o '[0-9]\{12,13\}' | sort -u); do DATE=$(date -d @$( echo "($i / 1000" | bc)); sed -i "s/$i/$DATE/g" *.log; done
