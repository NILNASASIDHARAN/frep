echo "enter the number to find factorial :"
read n
fact=1
for((i=1;i<=n;i++))
{ 
    #echo "$i value"
    fact=$((fact * $i));
}
echo "factorial of the given number is :$fact"

