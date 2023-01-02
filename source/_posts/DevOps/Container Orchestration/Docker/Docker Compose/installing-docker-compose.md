---
title: Installing Docker Compose
image: compose
tags:
- Raspberry pi
---
## Description

## Installing Docker Compose on Raspberry Pi OS [^1]

Check the official releases page for the latest version available.[^2] 

```
sudo curl -L "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-armv7" -o /usr/bin/docker-compose
```

```
sudo chmod +x /usr/bin/docker-compose 
```

[^1]: https://docs.docker.com/compose/install/
[^2]: https://github.com/docker/compose/releases