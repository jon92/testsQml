import QtQuick 2.0

Rectangle{
    id: mainScreen
    width :800
    height :600
    color :  "#14171c"

    MenuBar {
        id: menuBar
        z: 1
        height : 100
    }

    TextArea {
        id: textArea
        anchors.top: menuBar.bottom
        anchors.horizontalCenter: mainScreen.horizontalCenter
    }

    Params{
        id: params
        z:2
        anchors.bottom: parent.bottom
    }
}
