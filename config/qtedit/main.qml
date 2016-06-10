import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.0

import QtGraphicalEffects 1.0

ApplicationWindow {

    id:root

    visible: true
    width: 640
    height: 480
    title: "notepad"
    property bool changed : false
    property string currentFile

    color:'transparent'

    TextArea {

        style: TextFieldStyle {
        }
        id: butterfly
        text:'hello测试爱施德哈舒服爱佛额外氨基酸覅哦啊我要和佛ui飞'
        textColor:'white'
        focus:true
        backgroundVisible: false
        anchors.fill: parent
        onTextChanged: {
            changed = true
        }
        font.family: "setofont,monaco"
        font.pointSize:28

    }

    DropShadow {
        anchors.fill: butterfly
        horizontalOffset: 1
        verticalOffset: 1
        radius: 5.0
        samples: 17
        color: "black"
        source: butterfly
        spread:0.5
    }
}
