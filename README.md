## Taisun ![Taisun](http://taisun.io/img/TaisunSmall.png)

http://taisun.io

### QuickStart

You can generate a custom Taisun.io url here: 
https://www.taisun.io

Simple login and click on Taisun DynDNS. 

On a Docker enabled host run the following command from cli:
```
docker run --name taisundns -d \
-e DNSKEY=<DNSKEYFORDYNDNS> \
taisun/dyndns 
```
