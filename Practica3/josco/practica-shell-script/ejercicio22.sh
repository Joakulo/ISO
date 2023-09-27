num=(1 2 3 4 5)

result=1

for i in ${num[@]}
do
	result=$(expr $result \* $i)
done
echo "$result"
