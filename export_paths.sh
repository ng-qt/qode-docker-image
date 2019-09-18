#!/bin/bash
cat >> ~/.bashrc <<EOL

export QMAKE_PATH=/usr/lib/x86_64-linux-gnu/qt5/bin/qmake
export QT_INCLUDE_DIRS=/usr/include/x86_64-linux-gnu/qt5
export QT_LIBRARIES=/usr/lib/x86_64-linux-gnu
export QT_QPA_PLATFORM=offscreen
EOL