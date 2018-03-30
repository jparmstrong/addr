# addr

Sends sms with twilio with your latest ip address.

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
