FROM node:12

# https://askubuntu.com/a/577334
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
  cmake \
  build-essential \
  qtbase5-dev \
  libqt5x11extras5-dev \
  libqt5svg5-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ARG QT_QPA_PLATFORM=offscreen

ENV QMAKE_PATH=/usr/lib/x86_64-linux-gnu/qt5/bin/qmake
ENV QT_INCLUDE_DIRS=/usr/include/x86_64-linux-gnu/qt5
ENV QT_LIBRARIES=/usr/lib/x86_64-linux-gnu
ENV QT_QPA_PLATFORM=$QT_QPA_PLATFORM