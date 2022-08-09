#1
ranNumArr=()
larNum=0
smaNum=1000
for i in {1..10}; do
  ranNum=$(( 100+RANDOM%900 ))
  ranNumArr+=($ranNum)
  if [ $ranNum -gt $larNum ];then
    larNum=$ranNum
  fi
  if [ $ranNum -lt $smaNum ];then
    smaNum=$ranNum
  fi
done

printf "10 random numbers: ${ranNumArr[*]} \n"
printf "smallest and largest : $smaNum $larNum \n\n"

#2
secLarNum=0
secSmaNum=1000

for i in ${ranNumArr[@]}; do

  if [ $i -gt $secLarNum -a $i -ne $larNum ];then
    secLarNum=$i
  fi
  
  if [ $i -lt $secSmaNum -a $i -ne $smaNum ];then
    secSmaNum=$i
  fi

done

printf "smallest= $smaNum\n"
printf "second smallest= $secSmaNum \n"
printf "second largest= $secLarNum\n"
printf "largest= $larNum \n\n"


#3
read -p "Enter a number to get it's prime factors: " n
factArr=();
for(( i=3; i<=n; i=i+2));do

  while (( n%2 == 0 ));do
    n=$((n / 2));
    factArr+=(2);
  done
    
  while (( n%i == 0 ));do
    n=$(( n / i ));
    factArr+=($i);
  done

done
printf "${factArr[*]} \n\n";


#4
arr=(0 -1 2 -3 1)
n=${#arr[*]}

found='False'
for (( i=0; i<$n-2; i++ )); do
  for (( j=0; j<$n-1; j++ )); do
    for (( k=0; k<$n; k++ )); do
      sum=$(( arr[i] + arr[j] + arr[k] ))
      if [ $sum -eq 0 ];then
        echo ${arr[$i]} ${arr[$j]} ${arr[$k]}
        found='True'
      fi
    done
  done
done

if [ "$found" == 'False' ];then
  printf "does not exist \n\n"
fi


#5
arr=()
for i in {0..100}; do
  ones=$(( i%10 ))
  tens=$(( i/10 ))
  if [ $ones -eq $tens -a $ones -ne 0 ];then
    arr+=($i)
  
fi
done
echo
echo "repeating numbers from 0 to 100: ${arr[@]}"

