Containerized OpenSIPS and RTPEngine
====================

RTPEngine
----------------------

*This is a very simple configuration.*  

### To run the Container
>>>>>>> a7d9fe484b23ae5ea435f1ccc8aac61ed20d353c
```
docker run --name rtpengine -p 60000:60000 --restart=always -P -d icehook/rtpengine:0.1
```
