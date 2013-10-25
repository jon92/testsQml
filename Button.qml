import QtQuick 2.0

Rectangle{
    id: button
    property color buttonColor: "lightblue"
    property string buttonText: ""
    width: 70; height: 25
    color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor


    Text{
        id: buttonLabel
        anchors.centerIn: parent
        text: buttonText
    }

    signal buttonClick()

    onButtonClick: {
        console.log(buttonLabel.text + " clicked")
    }

    MouseArea{
        id : buttonMouseArea
        anchors.fill : parent
        onClicked: buttonClick()
        hoverEnabled: true 
    }
}
