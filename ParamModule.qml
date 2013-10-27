import QtQuick 2.0
import QtQuick.Controls 1.0


Rectangle {
    color: "#ee1e212c"
    width: parent.width
    property int valeur: mySlider.value

    Rectangle{
        id: title
        width: parent.width
        height: 25
        color : "#094074"
        Text{
            text: "Parameters"
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            x : 10
        }
    }
    Item{
        anchors.top : title.bottom
        Row{
            x: 25
            y: 10
            spacing : 10
            Text{
                text: "Page width"
                anchors.verticalCenter: parent.verticalCenter
                color: "white"

            }
            Slider {
                 id:mySlider
                 stepSize:1
                 minimumValue:600
                 maximumValue:800
                 value: 700
                 width:70
                 height: 12
                 anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

}
