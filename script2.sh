lsl=`ls -1`
for variable in $lsl
do
if [ $variable != "script.sh" ]
then
echo "$variable" | grep -v "no"
else
break
fi
done