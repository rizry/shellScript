function flipCoin(){
  b=$(( RANDOM % 2 ))
  a=$([ $b = 1 ] && echo "Heads" || echo "Tails")
  echo $a
}


headCount=0
tailCount=0
# for((i=0;i<20;i++));do
#   win=$(flipCoin)
  # if [ $win == 'Tails' ];then
  #   ((tailCount++))
  # else
  #   ((headCount++))
  # fi
# done

# echo "$headCount $tailCount"


# while (( headCount < 21 && tailCount < 21));do
#   win=$(flipCoin)

#   if [ $win == 'Tails' ];then
#     ((tailCount++))
#   else
#     ((headCount++))
#   fi
# done

# if [ $headCount -eq $tailCount ];then
#   echo "it's a draw"
# elif [ $headCount -gt $tailCount ]  ;then
#   echo "headCount wins by $((headCount-tailCount))"
# else 
#   echo "tailCount wins by $(( tailCount-headCount))"

# fi


function flipCountLogic(){
  win=$1;

  if [ $win == 'Tails' ];then
    ((tailCount++))
  else
    ((headCount++))
  fi
}



while (( ((headCount < 21 && tailCount < 21))  ));do
  win=$(flipCoin)
  flipCountLogic $win

  if((headCount== 21 && tailCount==21 ));then
    while(( headCount-tailCount < 2 && tailCount-headCount<2 ));do
      win=$(flipCoin)
      flipCountLogic $win
    done
  fi

done
echo "$headCount $tailCount"