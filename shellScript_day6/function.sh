#1
function convertTemp(){
  temp=$1;
  scale=$2;
  convertedTemp=0;

  case $scale in
    [cC])
      if [ $temp -lt 1 -o $temp -gt 100 ];then
        printf "\nthat is not valid. temp in °C should be bw 1 and 100 \n\n"
      else
        convertedTemp=$(echo "$temp" | awk '{ printf "%f", ($1 * (9/5)) + 32 }')
        printf "$temp °C = $convertedTemp °F \n\n";
      fi;;

    [fF])
      if [ $temp -lt 32 -o $temp -gt 212 ];then
        printf "\nthat is not valid. temp in °F bw 32 and 212 \n\n"
      else
        convertedTemp=$(echo "$temp" | awk '{printf "%f", ($1 - 32) * (5/9) }');
        printf "$temp °F = $convertedTemp °C \n\n";
      fi;;

    [*])
      printf "That doesnt seem valid \n\n";;  
  esac

}

read -p 'Enter a temperature within the Freezing (0 °C / 32 °F ) and  Boiling (100 °C / 212 °F ) Point: ' temp scale
convertTemp $temp $scale


#2
function checkPalindrome(){
  n1=$1
  n2=$2
  tmp=''
  if [ ${#n1} -ne ${#n2} ];then
    printf "Not palindrome \n\n";
    return
  else
    for (( i=0; i<${#n1}; i++ ));do
      tmp+=$(( n2%10 ))
      n2=$(( n2/10 ))
    done
  fi

  if [ $n1 -eq $tmp ];then
    printf "they are palindrome \n\n";
  else
    printf "Not palindrome \n\n";
  fi
}

read -p 'Enter two numbers to check palindrome: ' n1 n2

checkPalindrome $n1 $n2



#3
function checkPrime(){
  num=$1
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
  primality=$([ $isPrime = 1 ] && echo "a Prime" || echo "Not a prime");
  echo "$primality"
}


function getPalindrome(){
  n1=$1
  n2=''
  len=${#n1}
  for (( i=0; i<len; i++ ));do
    n2+=$(( n1%10 ));
    n1=$(( n1/10 ));
  done
  echo "$n2"
}

read -p 'Enter a number to check palindrome and prime: ' n1

chkpr=$(checkPrime $n1)
printf "$n1 is $chkpr. \n"
palin=$(getPalindrome $n1)
chkprm=$(checkPrime $palin)
printf "Palindrome of $n1 is $palin which is $chkprm \n\n"
