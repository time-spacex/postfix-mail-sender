## Примеры команд для отправки сообщений:

~/mail-templates/sample.txt - шаблон для отправки письма, монитруется как volume в контейнер

```
sudo docker exec postfix sh -c 'sendmail -f no-reply@ddos-guard.net -t < ~/mail-templates/sample.txt'
```

```
sudo docker exec postfix sh -c 'echo "This is the body of the email" | mail -s "This is the subject line" r.kleshnev@ddos-guard.net'
```

/home/rkleshnev/dev/postfix_mail_sender/mail-templates - поменять на рабочую директорию /storage/postfix-mail-sender/mail-templates