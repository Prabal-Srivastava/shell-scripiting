read x 
read y 

sum=`expr $x + $y`
difference=`expr $x - $y`
mul=`expr $x \* $y`
div=`expr $x / $y`

echo $sum
echo $difference
echo $mul
echo $div
