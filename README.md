## Taisun ![Taisun](http://taisun.io/img/TaisunSmall.png)

http://taisun.io

### QuickStart

You can generate a custom Taisun.io url here: 
https://api.taisun.io/prod/genurl

On a Docker enabled host run the following command from cli:
```
docker run --name taisundns -d \
-e DNSKEY=<DNSKEYFORDYNDNS> \
taisun/dyndns 
```
