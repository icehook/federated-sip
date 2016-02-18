Containerized OpenSIPS and RTPEngine
====================

RTPEngine
----------------------

* This is a very simple configuration.  

** To run the Container
```
docker run --name rtpengine -p 60000:60000 --restart=always -P -d icehook/rtpengine:0.1
```
