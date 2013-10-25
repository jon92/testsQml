import QtQuick 2.0

Row{

    spacing : 10
    Button{
        id: loadButton
        radius : 3
        buttonColor: "#0e2a44"
        Text {
               anchors.centerIn: parent
               text: "Load"
               color: "white"
        }
    }
    Button{
        id: saveButton
        buttonColor: "#0e2a44"
        radius : 3
        Text {
               anchors.centerIn: parent
               text: "Save"
               color: "white"
        }
    }
    Button{
        id: exitButton
        buttonColor: "#0e2a44"
        radius : 3
        Text {
               anchors.centerIn: parent
               text: "Exit"
               color: "white"
        }
    }
}
