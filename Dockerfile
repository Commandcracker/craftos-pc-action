FROM ubuntu:jammy

RUN set -eux; \
    apt-get update; \
    apt-get install -y software-properties-common; \
    add-apt-repository ppa:jackmacwindows/ppa; \
    apt-get update; \
    apt-get install -y libx11-dev craftos-pc craftos-pc-accelerated; \
    echo 'pcm.!default {type plug slave.pcm "null"}' > /etc/asound.conf

# TODO: Install craftos-pc from AppImage afeter build in order to always get lates verion and to have the alilitie to specify a specific version.
#       This would also allow chaning the docker image from ubuntu to something lightweight like alpine

COPY src/.settings /opt/craftos-pc-action/settings/.settings
COPY src/craftos-pc-tweaks/lua /opt/craftos-pc-action/craftos-pc-tweaks
COPY src/run.sh /opt/craftos-pc-action/run.sh

CMD bash /opt/craftos-pc-action/run.sh
