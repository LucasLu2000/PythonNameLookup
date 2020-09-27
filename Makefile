#MakeFile to build and deploy the Sample US CENSUS Name Data using ajax
# For CSC3004 Software Development


all: PutCGI PutHTML

PutCGI:
	chmod 757 namelookup.py
	cp namelookup.py /usr/lib/cgi-bin/namelookup.py

	echo "Current contents of your cgi-bin directory: "
	ls -l /usr/lib/cgi-bin/lu1

PutHTML:
	cp namelookup.html /var/www/html/softdev/pNames/
	cp namelookup.css /var/www/html/softdev/pNames/
	cp namelookup.js /var/www/html/softdev/pNames/

	echo "Current contents of your HTML directory: "
	ls -l /var/www/html/softdev/pNames/
