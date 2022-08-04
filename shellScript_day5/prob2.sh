# Selection Practice Problems with if & else
#1 
DICE_ARRAY=();
MIN=0;
MAX=0;
for (( i=1; i<=5; i++ )); do
 R=$(( 100 + RANDOM % 900 ))
 if (( i==1 ));then
  MIN=$R;
  MAX=$R;
 fi
 DICE_ARRAY+=($R);

 if (( R < MIN )); then
    MIN=$R;
 elif (( R > MAX  ));then
    MAX=$R;
  fi
done

printf "Five random dice numbers: ${DICE_ARRAY[*]} \n";
printf "Min: $MIN    Max: $MAX";
printf '\n\n';


#2
read -p 'Enter Day and Month in numerical form ( 4 10 ): ' DAY MONTH
if (( DAY < 1 || DAY > 31 || MONTH < 1 || MONTH > 12 ));then
  printf "That does not look like a valid date. Try again";
fi
if (( MONTH < 7 && MONTH > 2 && (( DAY > 1 && DAY < 31 )) )) ; then
  if (( MONTH == 3 && DAY < 20 ));then
    printf "False"
  elif (( MONTH == 6 && DAY > 20 ));then
    printf "False";
  else
    printf "True";
  fi    
else
  printf 'False';
fi
printf '\n\n';

# 3 Leap year or not
read -p 'Enter a year: ' YEAR
if(( ${#YEAR}==4 && (( (( YEAR%4==0 && YEAR%100 !=0 )) || YEAR % 400 == 0 )) ));then
  printf 'Leap Year';
elif (( ${#YEAR} != 4 ));then
  printf 'Invalid. Enter Again next time';
else   
  printf 'Not Leap Year';
fi  
printf '\n\n';

# 4 Heads or Tails Randomly 
R=$((  RANDOM % 2 ))
[ $R = 1 ] && printf "Heads" || printf "Tails";
printf '\n\n';



# Selection Practice Problems with if, elif and else
#1
read -p 'Enter a single digit number (1-9): ' NUM
if((NUM == 0));then
  printf 'Zero'
elif((NUM == 1));then
  printf 'One';
elif((NUM == 2));then
  printf 'Two';
elif((NUM == 3));then
  printf 'Three';
elif((NUM == 4));then
  printf 'Four';
elif((NUM == 5));then
  printf 'Five';
elif((NUM == 6));then
  printf 'Six';
elif((NUM == 7));then
  printf 'Seven';
elif((NUM == 8));then
  printf 'Eight';
elif((NUM == 9));then
  printf 'Nine';
else
  printf 'Enter a number between 1 and 10' ; 
fi
printf '\n\n';


#2
read -p 'Enter a number for day of the week (1-7): ' NUM
if((NUM == 1));then
  printf 'Sunday';
elif((NUM == 2));then
  printf 'Monday'  ;
elif((NUM == 3));then
  printf 'Tuesday';
elif((NUM == 4));then
  printf 'Wednesday';
elif((NUM == 5));then
  printf 'Thursday';
elif((NUM == 6));then
  printf 'Friday';
elif((NUM == 7));then
  printf 'Saturday';
else
  printf 'Enter a number between 1 and 7 to get the day'  
fi
printf '\n\n';

#3
read -p 'Enter a number among 1, 10, 100, 1000, 10000: ' NUM
if((NUM == 1));then
  printf 'unit';
elif((NUM == 10));then
  printf 'ten';
elif((NUM == 100));then
  printf 'hundred';
elif((NUM == 1000));then
  printf 'thousand';
elif((NUM == 10000));then
  printf 'ten thousand';
else
  printf 'Thats not in the options';
fi
printf '\n\n';

read -p 'Enter three random numbers: ' NUM1 NUM2 NUM3
if (( NUM1 > NUM2 ));then
  if ((  NUM1 > NUM3  ));then
    MAX=$NUM1;
  else
    MAX=$NUM3;
  fi  
elif (( NUM2 > NUM3 ));then  
  MAX=$NUM2;
else
  MAX=$NUM3;
fi

if (( NUM1 < NUM2 ));then
  if ((  NUM1 < NUM3  ));then
    MIN=$NUM1;
  else
    MIN=$NUM3;
  fi  
elif (( NUM2 < NUM3 ));then  
  MIN=$NUM2;
else
  MIN=$NUM3;
fi
printf "Max: $MAX   Min: $MIN \n";

printf "a + b * c = $(( NUM1 + NUM2 * NUM3 )) \n"
printf "a % b + c = $(( NUM1 % NUM2 + NUM3 )) \n"
printf "c + a / b = $(( NUM1 + NUM2 / NUM3 )) \n"
printf "a * b + c = $(( NUM1 * NUM2 + NUM3 )) \n"
printf '\n';


#Selection Practice Problems with case statement
#1
read -p 'Enter a single digit number (1-9): ' NUM
case "$NUM" in
  1)
    printf 'One';;
  2)
    printf 'Two';;
  3)
    printf 'Three';;
  4)
    printf 'Four';;
  5)
    printf 'Five';;
  6)
    printf 'Six';;
  7)
    printf 'Seven';;
  8)
    printf 'Eight';;
  9)
    printf 'Nine';;
  *)
    printf 'Enter a digit between 1 and 9';;
esac
printf '\n\n';

#2
read -p 'Enter a single digit number (1-9): ' NUM
case "$NUM" in
  1)
    printf 'Sunday';;
  2)
    printf 'Monday';;
  3)
    printf 'Tuesday';;
  4)
    printf 'Wednesday';;
  5)
    printf 'Thursday';;
  6)
    printf 'Friday';;
  7)
    printf 'Saturday';;
  *)
    printf 'Enter a digit between 1 and 7';;
esac
printf '\n\n';

#3
read -p 'Enter a number among 1, 10, 100, 1000, 10000: ' NUM
case "$NUM" in
  1)
    printf 'unit';;
  10)
    printf 'ten';;
  100)
    printf 'hundred';;
  1000)
    printf 'thousand';;
  10000)
    printf 'ten thousand';;
  *)
    printf 'Thats not in the options';;
esac
printf '\n\n';


read -p 'Enter a number to check unit conversions: ' NUM
printf "$NUM Feet is $(( NUM * 12 )) inch(es) \n";
printf "$NUM Feet is $(( (( NUM * 100 )) / 328 )) meter(s) \n";
printf "$NUM Inch is $(( NUM / 12 )) Feet \n";
printf "$NUM Meter is $(( NUM * 3 )) Feet \n";
