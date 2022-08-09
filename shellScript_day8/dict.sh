#1
declare -A diceDict
ranArr=();
isTen=0;

while (( !isTen ));do

  random=$(( 1 + RANDOM % 6 ));
  ranArr+=($random);
  diceDict[$random]=$(( ${diceDict[$random]}+1 ));

  if [ ${diceDict[$random]} -eq 10 ];then
    isTen=1;
  fi

done

printf "dice array: [${ranArr[*]}]\n\n";

max=0;
min=1000;

for key in ${!diceDict[@]};do

  if [ ${diceDict[$key]} -gt $max ];then
    keyMax=$((key));
    max=${diceDict[$key]};
  fi
  if [ ${diceDict[$key]} -lt $min ];then
    min=${diceDict[$key]};
    keyMin=$((key));
  fi


  printf "$key is present ${diceDict[$key]} times.\n";
done  
printf "\n$keyMin is present the minimum, $min times. \n";
printf "$keyMax is present the maximum, $max times. \n\n";




#2
monthArr=()
declare -A birthMonthDict
i=0
while [ $i -lt 50 ];do
  random=$(( 1 + RANDOM % 12 ));
  monthArr+=($random);
  ((i++))

  birthMonthDict[$i]=$((random));

done
# echo "${monthArr[@]}"

declare -A monthDict

for  k in ${!birthMonthDict[@]};do
  # echo "$k ${birthMonthDict[$k]}"
  # monthDict[$(( ${birthMonthDict[$k]} ))]=1;

  case ${birthMonthDict[$k]} in
    1)
      jan+=($k);;
    2)
      feb+=($k);;
    3)
      mar+=($k);;
    4)
      apr+=($k);;
    5)
      may+=($k);;
    6)
      june+=($k);;
    7)
      july+=($k);;
    8)
      aug+=($k);;
    9)
      sept+=($k);;
    10)
      oct+=($k);;
    11)
      nov+=($k);;
    12)
      dec+=($k);;
  esac

done

monthDict[jan]=${jan[*]}
monthDict[feb]=${feb[*]}
monthDict[mar]=${mar[*]}
monthDict[apr]=${apr[*]}
monthDict[may]=${may[*]}
monthDict[june]=${june[*]}
monthDict[july]=${july[*]}
monthDict[aug]=${aug[*]}
monthDict[sept]=${sept[*]}
monthDict[oct]=${oct[*]}
monthDict[nov]=${nov[*]}
monthDict[dec]=${dec[*]}


for  p in ${!monthDict[@]};do
  printf "individuals born in $p are: ${monthDict[$p]} \n"
done
