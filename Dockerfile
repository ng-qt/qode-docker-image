FROM node:12

# https://askubuntu.com/a/577334
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  qtbase5-dev \
  libqt5x11extras5-dev \
  libqt5svg5-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY export_paths.sh .

RUN ./export_paths.sh