#!/system/bin/sh
# Written by Draco (tytydraco @ GitHub)

# Wait for boot to finish completely
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# Sleep an additional 20s to ensure init is finished
sleep 20

charch -k -c '/usr/bin/env /usr/sbin/sshd'
