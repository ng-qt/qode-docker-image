## qode-docker-image
Docker image that comes preinstalled with Qt5 and Node.js

### Installation
```
$ docker pull ngqt/qode
```

### Environment
It has the following environment variables set by default:

| Name | Value |
|-|-|
| QT_LIBRARIES | /usr/include/x86_64-linux-gnu/qt5 |
| QT_INCLUDE_DIRS | /usr/lib/x86_64-linux-gnu |
| QMAKE_PATH | /usr/lib/x86_64-linux-gnu/qt5/bin/qmake |
| [QT_QPA_PLATFORM](https://doc.qt.io/qt-5/embedded-linux.html) | offscreen |
