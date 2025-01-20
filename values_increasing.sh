read x
read y
while [[ x -le y ]] 
do 
	((x++))
	echo "The value of x : $x"
done
