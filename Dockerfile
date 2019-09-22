FROM node:12

# Specify Docker arguments
ARG QT_QPA_PLATFORM=offscreen
ARG CMAKE_VERSION=3.15.3

# Install required Qt5 dependencies (https://askubuntu.com/a/577334)
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  qtbase5-dev \
  libqt5x11extras5-dev \
  libqt5svg5-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install CMake using the specific version
ADD https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-Linux-x86_64.sh /cmake-$CMAKE_VERSION-Linux-x86_64.sh
RUN mkdir /opt/cmake
RUN sh /cmake-$CMAKE_VERSION-Linux-x86_64.sh --prefix=/opt/cmake --skip-license
RUN ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake

# Set environment variables
ENV QMAKE_PATH=/usr/lib/x86_64-linux-gnu/qt5/bin/qmake
ENV QT_INCLUDE_DIRS=/usr/include/x86_64-linux-gnu/qt5
ENV QT_LIBRARIES=/usr/lib/x86_64-linux-gnu
ENV QT_QPA_PLATFORM=$QT_QPA_PLATFORM