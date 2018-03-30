# addr

A simple script that sends your public ip address as a text message via twilio. This is an alternative to using dynamic dns.

## configure

```
mv config_blank config
vim config
```

Update `config` with ACCOUNTSID, AUTHTOKEN, and CALLERID from your twilio account details. TO is the cell number you want to receive the text.

## crontab

```
@reboot     /home/jp/code/addr/script.sh > /dev/null 2>&1
00 06 * * * /home/jp/code/addr/script.sh > /dev/null 2>&1
```

## credit

twilio-sms is from https://www.twilio.com/labs/bash/sms

public ip address api from http://www.ipify.org
