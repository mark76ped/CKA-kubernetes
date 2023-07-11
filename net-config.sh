#script for creating network config based on CNI standards
#ip link add v-net-0 type bridge
#ip link set dev v-net-0 up
#ip addr add 192.168.{$aval.node.octet}.5/24 dev v-net-0
#ip link add veth-{$available.node} type veth peer name veth-{$available.node}-br 
#ip link add veth-{$available.node} netns {$node} 
#ip -n {$node} addr add 192.168.15.1 dev veth-{$available.node}
#ip -n {$node} link set veth-{$available.node} up
#ip link set veth-{$available.node}-br master v-net-0
#ip netns exec {$connecting.node} ip route add 192.168.{$gateway-octet}.0/24 via 192.168.{$aval.node.octet}.5
#iptables -t nat -A POSTROUTING -s 192.168.{$aval.node.octet}.0/24 -j MASQUERADE 

# Create veth Pair