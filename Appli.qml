import QtQuick 2.0

Rectangle{
    id: mainScreen
    width: 800
    height :600
    color :  "#14171c"

    MenuBar {
        id: menuBar
        z: 1
        height : 100
    }

    TextArea {
        id: textArea
        width : paramModule.valeur
        anchors.top: menuBar.bottom
        anchors.horizontalCenter: mainScreen.horizontalCenter
    }

    Params{
        id: params
        z:2
        width: mainScreen.width
        anchors.bottom: parent.bottom
    }
    ParamModule{
        id:paramModule
        width: 200
        height: 300
        anchors.right: parent.right
        y : 150
    }
}
