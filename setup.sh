apt update
apt install mailutils -y
echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-selections
echo "postfix postfix/mailname string test-vm-1" | debconf-set-selections
apt install postfix -y
postconf maillog_file=/var/log/postfix.log
postconf relayhost=185.129.102.80