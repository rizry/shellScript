#1
read -p 'Enter a number till where to print the power of 2: ' num
i=1
power=2
while (( i<= num && power < 256 )); do
  
  if((i>100));then
    break
  fi

  power=$((2**i))
  printf "2^$i $power \n"
  ((i++))
done
printf "\n"


#2
echo 'Think a number between 1 to 100: '
lower=1
upper=100
while (( lower <= upper )); do
  middle=$(( (lower+upper) /2))
  read -p "is your number $(( middle )) : " ans
  if [[ $ans == 'yes' || $ans == 'y' ]];then
    printf "great. thanks for playing \n\n"
    break
  fi  
  read -p "is your number less than $middle : " response
  case $response in 
    [yY]|[yY][eE][sS])
      upper=$((middle-1 ));;
    [nN]|[nN][oO])
      lower=$((middle+1 ));;
  esac
done


#3
headCount=0;
tailCount=0;
while [[ $headCount -lt 11 && $tailCount -lt 11 ]] ;do
  random=$((RANDOM%2));
  if [ $random -eq 1 ];then
    ((headCount++));
    printf 'H '
  else
    ((tailCount++));
    printf 'T '
  fi
done
printf "\n\n"


#4
money=100;
numOfBets=0;
timesWon=0;
while(( money>0 && money <=200)); do
  gamble=$((RANDOM%2))
  ((numOfBets++))
  if [ $gamble -eq 1 ];then
    ((money++));
    ((timesWon++));
  else 
    ((money--));
  fi
done

printf "number of bets: $numOfBets \n";
printf "times won: $timesWon \n";


