FROM ubuntu:jammy

RUN set -eux; \
    apt-get update; \
    apt-get install -y software-properties-common; \
    add-apt-repository ppa:jackmacwindows/ppa; \
    apt-get update; \
    apt-get install -y libx11-dev craftos-pc craftos-pc-accelerated; \
    echo 'pcm.!default {type plug slave.pcm "null"}' > /etc/asound.conf

COPY src/.settings /opt/craftos-pc-action/settings/.settings
COPY src/craftos-pc-tweaks/lua /opt/craftos-pc-action/craftos-pc-tweaks
COPY src/run.sh /opt/craftos-pc-action/run.sh

CMD bash /opt/craftos-pc-action/run.sh
