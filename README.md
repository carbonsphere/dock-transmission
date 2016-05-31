#  Transmission on Docker

```
CentOS 7 with Transmission & Daemon from epel-release
```

## Download Docker Image:
```
docker pull carbonsphere/dock-transmission
```

## Download Dockerfile for self build:
```
git clone https://github.com/carbonsphere/dock-transmission.git
```

## Transmission version:
```
transmission-remote 2.92 (14714)
```

## Default Volume Mounts:
```
VOLUME ["/Downloads”]   <——— According to setting.json
VOLUME ["/root/.config/transmission-daemon"] <----- According to run command
```

## Update Block List:
```
docker exec -it transmission bash
$ transmission-remote —blocklist-update
```

## Web connection:
Use local browser to connect and add torrents or magnet links
```
127.0.0.1:9091
```

## Run Instructions :
```
docker run —name transmission -p 9091:9091 —privileged -d -v {Configuration location}:/root/.config/transmission-daemon -v {Local Download folder}:{Download location set in setting.json} carbonsphere/dock-transmission
```
### Example:

```
mkdir transmission-test
cd transmission-test
git clone https://github.com/carbonsphere/dock-transmission.git
cd dock-transmission
mkdir Downloads
docker run --name transmission -p 9091:9091 --privileged -d -v $(pwd)/transmission-default-config:/root/.config/transmission-daemon -v $(pwd)/Downloads:/Downloads carbonsphere/dock-transmission
```
