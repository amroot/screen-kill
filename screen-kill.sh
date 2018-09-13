# screen-kill.sh
# Kills (quits) all "screen" sessions without warning.
# Robert Gilbert - amroot.com 
#

for sessions in $(screen -ls | grep 'Attached\|Detached' | awk {'print $1'}); do screen -X -S $sessions quit; done
