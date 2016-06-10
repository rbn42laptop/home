
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.0
import QtGraphicalEffects 1.0
import QtWebKit 3.0
import QtWebKit.experimental 1.0
ApplicationWindow {

    id:root

    visible: true
    width: 640
    height: 480
    title: "notepad"

    color:'transparent'

    WebView {
        /*opacity:0.5*/
        anchors.fill: parent
        experimental.transparentBackground: true
        /*url:'http://www.ubuntu.com'*/
        /*shellinabox*/
        /*url:'http://127.0.0.1:4200/'*/
        url:'1.html'
        id: butterfly
    }
    DropShadow {
        anchors.fill: butterfly
        horizontalOffset: 1
        verticalOffset: 1
        radius: 5.0
        samples: 17
        color: "white"
        source: butterfly
        spread:0.5
    }
}
