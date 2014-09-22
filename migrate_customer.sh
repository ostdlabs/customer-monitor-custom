#!/bin/bash


CUSTOMER=$1
WEB_SERVER_IP=$(curl http://checkip.amazonaws.com/)
MYSQL_PASSWD="customer_creator"

### Prepare source code base ###
cd sources
FILES=`find . | grep customer` 

echo "starting processing on " $FILES

git clean -fd
git checkout -b $CUSTOMER
git push origin $CUSTOMER

echo "movig generic files into customer specific ones"
for FILE in $FILES 
do
	echo "processing [" $FILE  "]"
	sed_command="echo '$FILE' | sed 's/customer/$CUSTOMER/g'"
	echo "executing " $sed_command
	NEW_LOCATION=`eval $sed_command`
	echo "updated location [" $NEW_LOCATION "]"
	mv $FILE $NEW_LOCATION
done

echo "processing strings in files"
sed_command="find . -type f -print | xargs sed -i 's/\${customer}/$CUSTOMER/g'"
echo "executing" $sed_command
`eval $sed_command`

git add --all
git_comment="Creating separate product base for customer [$CUSTOMER]"
git commit -am "$git_comment" 
git push origin $CUSTOMER

echo "finished sources migration"

### Prepare DNS ###

#dns_command="java -jar /usr/share/ostdlabs/internal/dns-customer-service/dns-customer-service.jar
#$WEB_SERVER_IP test.$CUSTOMER"
#echo "executing " $dns_command
#eval $dns_command

### Prepare DB ###

#mysql_command="mysql -hlocalhost -ucustomer_creator -p$MYSQL_PASSWD < ./control/sql/create_database.sql"
#echo "executing" $mysql_command
#eval $mysql_command

#mysql_command="mysql $CUSTOMER -hlocalhost -u$CUSTOMER -p$CUSTOMER < ./control/sql/schema.sql"
#echo "executing" $mysql_command
#eval $mysql_command

#mysql_command="mysql $CUSTOMER -hlocalhost -u$CUSTOMER -p$CUSTOMER < ./control/sql/basics.sql"
#echo "executing" $mysql_command
#eval $mysql_command

### preparations finished ###

### Build packages ###

#cd ./sources

#mvn -s ./settings.xml -Dmaven.repo.local=./.repository clean install

#cd ./core/api/api_rest
#debuild --no-tgz-check -k1FE5ED4B
#dupload ../*_amd64.changes

#cd ../../../
#git clean -fd

#mvn -s ./settings.xml -Dmaven.repo.local=./.repository clean install
#cd ./core/api
#debuild --no-tgz-check -k1FE5ED4B
#dupload ../*_amd64.changes

#cd ../../
#git clean -fd

#mvn -s ./settings.xml -Dmaven.repo.local=./.repository clean install
#cd ./core/web
#debuild --no-tgz-check -k1FE5ED4B
#dupload ../*_amd64.changes

#cd ../../
#git clean -fd

### Back to master with cleanup ###
git reset --hard
git clean -fd
git checkout master

### Install packages ###

#sudo apt-get update
