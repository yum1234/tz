git log | grep Date | tr -s ' ' | cut -d' ' -f7 | wc -l
git log ${1} | grep -E '^Date' | tr -s ' ' | cut -d' ' -f7 | sort -n | uniq -c | awk '{print $2, $1}'