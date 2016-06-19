#!/bin/bash
#cd $(dirname "$0")
export QML2_IMPORT_PATH=~/git/QMLProcess/build:~/git/qmltermwidget/build
#./qmlterm "$@"
$(dirname "$0")/qmlterm "$@"
