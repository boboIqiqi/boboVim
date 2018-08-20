read -p "[Yes/No]" ans
while [[ "x"$ans != "xyes" && "x"$ans != "xno" ]] 
do 
    read -p "[Yes/No]" ans
done
echo "x = $ans"

if [ $ans == "yes" ]
then
    echo "you input yes!"
else
    echo "you input no!"
fi

