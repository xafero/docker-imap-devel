#!/bin/sh
podman build -t imapdevil .
podman run \
   -p 4025:25 -p 4143:143 -p 4993:993 -p 4180:80 \
   -e MAILNAME=pepsi.org -e MAIL_ADDRESS=ceo@pepsi.org -e MAIL_PASS=mailPass20k \
   -e ROUNDCUBEMAIL_DEFAULT_HOST=127.0.0.1 -e ROUNDCUBEMAIL_SMTP_SERVER=127.0.0.1 \
   --name imap -it --rm imapdevil
