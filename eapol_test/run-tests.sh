#!/bin/bash
echo "" 

echo "Running local eap-ttls test"
./bin/eapol_test -c eap-ttls.conf -s localsecret > /dev/null
if [ $? -eq 0 ]
then
	echo "SUCCESS"
else
	echo "FAILED"
fi
echo ""

echo "Running local peap-mschapv2 test"
./bin/eapol_test -c peap-mschapv2.conf -s localsecret > /dev/null
if [ $? -eq 0 ]
then
	echo "SUCCESS"
else
	echo "FAILED"
fi
echo ""

echo "Running visited eap-ttls test"
./bin/eapol_test -c eap-ttls-visited.conf -s localsecret > /dev/null
if [ $? -eq 0 ]
then
	echo "SUCCESS"
else
	echo "FAILED"
fi
echo ""

echo "Running visited peap-mschapv2 test"
./bin/eapol_test -c peap-mschapv2-visited.conf -s localsecret > /dev/null
if [ $? -eq 0 ]
then
	echo "SUCCESS"
else
	echo "FAILED"
fi
echo ""
