import QtQuick 2.0
import QtQuick.Controls 1.0

Rectangle {
    id: params
    color: "#123556"
    opacity: 0.5

    MouseArea{
        id : mouseArea
        anchors.fill : parent
        hoverEnabled: true
        onEntered: parent.opacity= 0.8
    }

    Row{

        anchors.centerIn: parent
        spacing : 20
        Row{
            spacing : -10
            CheckBox{
                id: checkbox
            }
            Text{
                text: checkbox.checked ? "Checked" : "Unchecked"
                anchors.verticalCenter: checkbox.verticalCenter
                color: "white"
                opacity: 1
            }
        }
        Row{
            spacing : -10
            CheckBox{
                id: checkbox2
                checked: true
            }
            Text{
                text: checkbox2.checked ? "Checked" : "Unchecked"
                anchors.verticalCenter: checkbox2.verticalCenter
                color: "white"
                opacity: 1
            }
        }
    }
}
