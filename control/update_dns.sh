#!/bin/bash

CUSTOMER=${customer}
WEB_SERVER_IP=$(curl http://checkip.amazonaws.com/)

dns_command="sudo -H -u dns-customer-service bash -c 'java -jar
/usr/share/ostdlabs/internal/dns-customer-service/dns-customer-service.jar
$WEB_SERVER_IP $CUSTOMER.test'"
echo "executing " $dns_command
spawn $dns_command
