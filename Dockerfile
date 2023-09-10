FROM ubuntu:jammy

RUN set -eux; \
    add-apt-repository ppa:jackmacwindows/ppa; \
    apt-get update; \
    apt-get install -y craftos-pc

CMD echo hi 
