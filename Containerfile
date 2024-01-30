FROM  quay.io/fedora/fedora:latest
VOLUME /mnt
WORKDIR /mnt
RUN dnf update -y
RUN dnf install -y lgogdownloader pipx bash
RUN pipx install -y itchiodl
CMD bash