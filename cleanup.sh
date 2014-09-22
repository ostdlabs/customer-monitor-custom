CUSTOMER=$1
MYSQL_PASSWORD="61407843"

mysql_clean="mysql -hlocalhost -uroot -p$MYSQL_PASSWORD -e \ 'drop database
\`$CUSTOMER\`'"
echo "executing " $mysql_clean
eval $mysql_clean

mysql_clean="mysql -hlocalhost -uroot -p$MYSQL_PASSWORD -e \ 'drop user
$CUSTOMER@localhost;'"
echo "executing " $mysql_clean
eval $mysql_clean

git branch -D $CUSTOMER
git push origin :$CUSTOMER
