LEGION_NODES=/etc/uwsgi/legion_nodes
NODES=/etc/uwsgi/nodes

# tuntap firewall
iptables -F tuntap
while read line
do
	iptables -A tuntap -s $line --sport 999 -j ACCEPT
done
iptables -A tuntap -j DROP

#while read line
#do
#	echo "$line"
#	echo "$line"
#done < $LEGION_NODES