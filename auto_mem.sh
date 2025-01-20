total_mem=`free -m | head -2 | tail -1 | awk -d '{print $2}'`

used_mem=`free -m | head -2 | tail -1 | awk -d '{print $3}'`

memory_percentage_total=`expr $used_mem \* 100 / $total_mem`

echo  "`date +"%r %D"`  $memory_percentage_total" >> data_mem_report.tsv
