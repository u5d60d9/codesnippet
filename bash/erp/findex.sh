#rm $1.txt
a=`date +%F_%H%M%S`
for p in "` find .  -iname "MyLog*.log"`"; do
awk "/<Exception>.*${1}/,/\/Exception/" $p >> "$a.txt"
done

#while read p; do
#awk "/${1}/{flag=1}/Exception>/{print;flag=0}flag" $p >> $1.txt
#awk "/${1}/ {for(i=1; i<=20; i++) {getline; print}}" $p >> $1.txt
#done <re.txt
