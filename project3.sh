for server in $(cat server.txt)
do
	echo $server
	ssh $server -p 22341 "uptime; free -h; df -h"
	
done
