import QtQuick 2.0

Rectangle{
    id: node
    width: 70
    height: 20
    property color outputColor
    Rectangle{
        id: output
        color: outputColor
        anchors.left: parent.right
        anchors.leftMargin: -3
        anchors.verticalCenter: parent.verticalCenter
        width: 8
        height: 8
        border.width: 2
        border.color: "blue"
        radius: width*0.5
    }
    MouseArea{
        anchors.fill : parent
        anchors.top : parent.top
        anchors.left: parent.left
        hoverEnabled: true
        onClicked: {
            console.debug(mouseX)
            console.debug(mouseY)
        }
    }
}
