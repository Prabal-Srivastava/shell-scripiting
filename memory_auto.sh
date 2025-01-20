while :
do
		
	memory_total=`free -m | head -2 | tail -1 | awk '{print $2}'` 
		
	memory_used=`free -m | head -2 | tail -1| awk '{print $3}'`
		
	mem_used_percentage=`expr $memory_used \* 100 / $memory_total`
	
	echo -e "`date +"%r %D"` \t $mem_used_percentage" >> memory_report.tsv

	if [[ $mem_used_percentage -ge 80 ]]
	then 
		echo "security alarm for the memory" | espeak-ng
		exit
	fi
	sleep 5 
done 
