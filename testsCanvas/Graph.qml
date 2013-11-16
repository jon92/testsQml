import QtQuick 2.0

Rectangle{
    width: 600
    height: 400

    Node {
        id: redNode
        x: 50
        anchors.top: parent.verticalCenter
        color:"red"
        outputColor: "blue"
    }
    Node {
        id: blueNode
        x: 250
        y: 90
        color:"blue"
        outputColor: "red"
    }

    Connection{

    }
}
