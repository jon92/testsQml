import QtQuick 2.0

Row{

    spacing : 10
    Button{
        id: copyButton
        radius : 3
        buttonColor: "#0e2a44"
        Text {
               anchors.centerIn: parent
               text: "Copy"
               color: "white"
        }
    }
    Button{
        id: pasteButton
        radius : 3
        buttonColor: "#0e2a44"
        Text {
               anchors.centerIn: parent
               text: "Paste"
               color: "white"
        }
    }
    Button{
        id: selectButton
        radius : 3
        buttonColor: "#0e2a44"
        Text {
               anchors.centerIn: parent
               text: "Select all"
               color: "white"
        }
    }
}
