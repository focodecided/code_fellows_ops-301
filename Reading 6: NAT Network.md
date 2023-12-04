
### 1. What is the main purpose for implementing NAT on a network?

The main purpose for implementing NAT on a network is to allow multiple devices to access the Internet through a single public IP address. It enables private IP addresses to be translated to public IP addresses in order to provide Internet access.

### 2. At what layer of the OSI model does NAT happen?

NAT happens at the network layer (layer 3) of the OSI model.

### 3. What happens to packets when NAT runs out of addresses in the pool of available IPs?

When NAT runs out of addresses in the configured pool, packets will be dropped and an ICMP host unreachable packet is sent back to the destination.

### 4. What disadvantage does using NAT pose for routers?

One disadvantage of using NAT is that the router has to tamper with port numbers which normally happens at the transport layer. But since routers operate at the network layer, dealing with ports violates the separation of layers.

### What I want to learn more about