#1
SINGLE_DIGIT=$(( RANDOM % 10 ));
printf "random single digit number: $SINGLE_DIGIT \n\n";

#2
DICE_NUMBER=$(( 1 + RANDOM % 6 ));
printf "random dice number: $DICE_NUMBER \n\n";

#3
DICE_NUMBER1=$(( 1 + RANDOM % 6 ));
DICE_NUMBER2=$(( 1 + RANDOM % 6 ));
SUM=$((DICE_NUMBER1 + DICE_NUMBER2));
printf "sum of random dice numbers: $DICE_NUMBER1 + $DICE_NUMBER2 = $SUM \n\n";

#4
printf 'Random dice digits and their sum & average. \n';
DICE_ARRAY=();
SUM=0;
for (( i=1; i<=5; i++ )); do
 R=$(( 1 + RANDOM % 6 ));
 DICE_ARRAY+=($R);
 SUM=$((SUM+R));
done

AVERAGE=$(( SUM / ${#DICE_ARRAY[@]} ));
printf "Five random dice numbers: ${DICE_ARRAY[*]} \n";
printf "sum: $SUM     average: $AVERAGE \n\n";


#5
printf 'Unit Conversion \n';
printf "a) if 1 ft = 12 in then 42 in = $(( 42 / 12 )) ft \n";

Area_Of_One_Plot=$(( 60 * 40 ));
Area_Of_One_Plot_In_Meter=$(( Area_Of_One_Plot / 11 ));

printf "b) Rectangular Plot of 60 feet x 40 feet in meters = $Area_Of_One_Plot_In_Meter meters \n";
printf "c) Area of 25 such plots in acres = $(( Area_Of_One_Plot_In_Meter * 25 / 4047 )) Acre \n";
