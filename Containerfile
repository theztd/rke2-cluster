FROM registry.gitlab.com/fedora/bootc/base-images/fedora-bootc-minimal:40-amd64 AS base

# Přidej balíčky přes DNF (nutné pro systemd prostředí)
RUN microdnf install -y \
      htop \
      vim-minimal \
    && microdnf clean all

RUN curl -sSf https://get.k0s.sh | sh

CMD ["/sbin/init"]