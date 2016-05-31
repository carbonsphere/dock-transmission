Transmission on Docker
----------------------

Download Docker Image:
docker pull carbonsphere/dock-transmission

Download Dockerfile for self build:
git clone https://github.com/carbonsphere/dock-transmission.git

Transmission version:
transmission-remote 2.92 (14714)

Default Volume Mounts:
VOLUME ["/Downloads”]   <——— According to setting.json
VOLUME ["/root/.config/transmission-daemon"] <----- According to run command

Update Block List
docker exec -it transmission bash
$ transmission-remote —blocklist-update

Run Instructions :
docker run —name transmission -p 9091:9091 —privileged -d -v {Configuration location}:/root/.config/transmission-daemon -v {Local Download folder}:{Download location set in setting.json} carbonsphere/dock-transmission
