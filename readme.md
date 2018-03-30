# addr

pings github with the latest ip address of your home computer.

Add to crontab

```
@reboot     /home/jp/code/addr/script.sh > /dev/null 2>&1
00 06 * * * /home/jp/code/addr/script.sh > /dev/null 2>&1
```
