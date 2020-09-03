sed 's/:requirements/:requirements :method-preconditions :equality/g' -i $1
awk -i inplace 'BEGIN{rem=1; inrem=0}/:method /{rem=0} /:precondition/{if (rem){inrem=1}} /^\t)/{inrem=0} {if (!inrem) print}' $1
cat $1 | grep "=" | grep -v '(not (' | tr -d '\t' | cut -d ' ' -f 3 | tr -d ')' | sort | uniq > .temp
P=$(echo $1 | sed 's/^d/p/g')
for i in $(cat .temp) ; do 
	C=$(grep -P '\t'$i" -" ../problems/$P)
	sed '/\t'$i' -/d' -i ../problems/$P
	echo REPLACE $C
	sed "s/:constants/:constants\n$C/g" -i $1
done
