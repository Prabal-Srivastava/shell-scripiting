if ping -c 1 8.8.8.8 > /dev/null
then 
	echo "The internet is live and connected"
else
	echo "no internet conected"
fi
