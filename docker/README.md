Containerized OpenSIPS and rtpengine
====================

RTPEngine
----------------------

*This is a very simple configuration.*  

### To run the Container

```
docker run --name rtpengine -p 60000:60000 --restart=always -P -d icehook/rtpengine:0.1
```
