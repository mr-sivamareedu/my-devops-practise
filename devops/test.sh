#!/bin/bash

<<com
echo "$*"
echo "$@"
echo $$
com

#set -A arr 1 2 4

arrr=(1 2 4 5 6)
for i in ${arrr[@]}
do
    echo $i
done

a=2
b=67

echo $((a + 1))


select fav in ubuntu popos mint kubuntu
do
  echo "My fav distribution = ${fav}"
  break
done