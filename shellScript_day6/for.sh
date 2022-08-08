# 1
read -p 'Enter a number till where to print the power of 2: ' num
for((i= 1; i<= $num; i++)); do
  printf "2^$i = $((2 ** i)) \n\n";
done


# 2
read -p 'Enter a number to get the nth harmonic number: ' num
harmonic=0
for((i= 1; i<= $num; i++)); do
  calc=$(echo "1 $i" | awk '{ printf "%f", $1 / $2 }');
  harmonic=$(echo "$harmonic $calc" | awk '{ printf "%f", $1 + $2 }');
done
printf "harmonic= $harmonic \n\n";


#3
read -p 'Enter a number to check if it is prime: ' num
isPrime=1;
if (( num < 2 )); then
  isPrime=0;

else
  for(( i=2; i<=num/2 ; i++ )); do
    if (( num % i == 0 ));then
      isPrime=0;
      break
    fi  
  done
fi  
a=$([ $isPrime = 1 ] && echo "Prime" || echo "Not prime");
printf "$a \n\n";


#4
read -p 'Enter a number to get prime upto that range: ' num
primeArr=();
for (( i=2 ; i<=$num ; i++ ));do
isPrime=1;

  for (( j=2;  j<=$i/2 ; j++ ));do
    if(( i%j == 0 ));then
      isPrime=0;
      break
    fi            
  done

if(( isPrime == 1 ));then
  primeArr+=($i);
fi
done
printf "prime arr= ${primeArr[*]} \n\n";


#5
read -p "Enter a number to get it's factorial: " num
factorial=1;
for(( i=num; i>1; i--));do
  factorial=$(( i*factorial ));
done
printf "factorial= $factorial \n\n";


#6
read -p "Enter a number to get it's prime factors: " num
arr=();
for(( i=3; i<=num; i=i+2));do

  while (( num%2 == 0 ));do
    num=$((num / 2));
    arr+=(2);
  done
    
  while (( num%i == 0 ));do
    num=$(( num / i ));
    arr+=($i);
  done

done
printf "${arr[*]} \n\n";

