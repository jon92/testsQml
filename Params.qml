import QtQuick 2.0
import QtQuick.Controls 1.0

Rectangle {
    id: params
    color: "#123556"
    opacity: 0.5
    width: 800
    height: 30

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
                checked: true
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
            }
            Text{
                text: checkbox2.checked ? "Menu maximized" : "Maximize this menu"
                anchors.verticalCenter: checkbox2.verticalCenter
                color: "white"
                opacity: 1
            }
        }
    }

    states: State {
           name: "maximized"; when: checkbox2.checked
           PropertyChanges { target: params; height:50 }
    }
    transitions: Transition {
             NumberAnimation { properties: "height"; easing.type: Easing.InOutQuad }
    }
}
