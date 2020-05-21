#!/bin/bash

cat $1 | grep -v ":require" | grep -v "instance-" > .temp

cat .temp | grep goal | sed "s/:goal-tasks (sequence/:htn\\\\n\\\\t:parameters ()\\\\n\\\\t:ordered-subtasks (and/g" > .goal 

COMP=$(($(cat .temp | grep component | wc -w) - 2))
INST=$(($COMP * 2))

L=a
IDECL=
INI="(currentNextInstance i1)"
for i in $(seq 1 $INST)
do
	IDECL=$(echo $IDECL i$i)
	if [ $L != a ] ; then
		INI=$(echo $INI"\n(next i"$(($i-1))" i"$i")")
	fi
	L=$i
done

cat .temp | sed 's/:init/:init\n'"$INI"' /g' | sed 's/objects/objects\n'"$IDECL"' - instance/g' | grep -v goal | sed 's/(:init/'"$(cat .goal)"'\n(:init/g'
