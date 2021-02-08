APACHE2=$(dpkg-query -W -f='${$status}' apache2 2>/dev/null | grep -c 'ok installed')
if [ $APACHE2 -eq 0 ]; then
	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
elif [ $APACHE2 -eq l ]; then
	echo "apache2 on juba paigaldatud"
	service apache2 start
	service apache2 status
fi

