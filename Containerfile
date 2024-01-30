FROM  quay.io/fedora/fedora:latest
VOLUME /mnt

# get pkgs
RUN dnf update -y
RUN dnf install -y lgogdownloader pipx bash
RUN pipx install -y itchiodl

# clean up
RUN dnf clean all -y && rm -fr /var/cache/* /tmp/* /var/tmp/* /root/.cache/*

# finish up
WORKDIR /mnt
CMD bash
