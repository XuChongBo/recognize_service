
# recognize_service
online and offline image text recognition. including handwring,printing 

====== the project structure ===
project
    nginx.conf
    server.conf
    test1.lua
    test2.lua
    lualib            ---lua依赖库/第三方依赖
      *.lua
      *.so
      xx/x.lua      --my lua package

 ==check in one process===
 docker exec -it xxxcontainer /bin/bash
 
 ===
 docker logs --tail=100 -f xxxcontainer
