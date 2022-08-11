read -p "enter 3 numbers: " a b c
# echo "a + b * c = $((a + b * c))"
# echo "a * b + c = $((a * b + c))"
# echo "c + a / b = $((c + a / b))"
# echo "a % b + c = $((a % b + c))"


declare -A result_dict
key1='a + b * c'
key2='a * b + c'
key3='c + a / b'
key4='a % b + c'

result_dict[$key1]=$((a + b * c))
result_dict[$key2]=$((a * b + c))
result_dict[$key3]=$((c + a / b))
result_dict[$key4]=$((a % b + c))

resultsArr=()

for key in "${!result_dict[@]}"; do
    echo "$key = ${result_dict[$key]}"
    resultsArr+=( ${result_dict[$key]} )

done

echo "array: ${resultsArr[*]}"

readarray -t arrSorted < <(   printf '%d\n' "${resultsArr[@]}" | sort -n )
readarray -t arrRevSorted < <(   printf '%d\n' "${resultsArr[@]}" | sort -nr )

echo "sorted array: ${arrSorted[*]}"
echo "descending order array: ${arrRevSorted[*]}"

# echo ${resultsArr[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort -n


