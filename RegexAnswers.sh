#sam Berger
if [[ $# -lt 1 ]];
then
	echo "Usage: $0 filename"
	exit 0
fi
grep .*[0-9]$ -c $1
grep ^[^aeiouAEIOU] -c $1
egrep ^[a-zA-Z]{12}$ -c $1
egrep [0-9]{3}-[0-9]{3}-[0-9]{4} -c $1
egrep 303-[0-9]{3}-[0-9]{4} -c $1
grep ^[aeiouAEIOU].*[0-9]$ -c $1
grep @geocities.com$ -c $1
grep @[^.]*$ -c $1