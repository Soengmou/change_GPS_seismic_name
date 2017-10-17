#!/bin/bash

for name in  `ls ../data`; 
do 
	cd ../data
 	dayth=${name:4:8}
 	yyyy=${name:4:4}
 	mm=${name:8:2}
 	day=${name:10:2}
 
 	declare -A months=( ["01"]="00" ["02"]="31" ["03"]="59" ["04"]="89" ["05"]="120" ["06"]="150" ["07"]="181" ["08"]="212" ["09"]="242" ["10"]="273" ["11"]="303" ["12"]="334" )

 	jmnt=${months["${mm}"]}
 	result=`expr ${jmnt} + ${day}`
 	
 	if [ $result -lt 10 ]; then
		res=00${result}
 	elif [ $result -lt 100 ]; then
		res=0$result; 
 	else 
		res=${result};
 	fi
 	
 	mv -i ${name} ${name/"${dayth}"/"${res}"}
 	
 	cd ../code
done

./vanish_0.sh