FROM  quay.io/fedora/fedora:39
VOLUME /mnt

# get pkgs
RUN dnf update -y
RUN dnf install -y lgogdownloader pipx bash
RUN pipx install itchiodl

# clean up
RUN dnf clean all -y && rm -fr /var/cache/* /tmp/* /var/tmp/* /root/.cache/*

# finish up
WORKDIR /mnt
CMD bash
