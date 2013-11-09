import QtQuick 2.0

Rectangle {
    id: root
    width: 640
    height: 360
    color: "#3C3C3C"

    ListModel {
        id: model
        ListElement{ label: "Pikachu"; value:40; color:"#99e600"}
        ListElement{ label: "Herbizare"; value:20; color:"#19c8d0"}
        ListElement{ label: "Dracaufeu"; value:70; color:"#dd322a"}
        ListElement{ label: "Psykokwak"; value:50; color:"#a52df5"}
        ListElement{ label: "Mewtoo"; value:100; color:"#123456"}
        ListElement{ label: "Abra"; value:40; color:"#8b3450"}
        ListElement{ label: "Racaillou"; value:40; color:"#bbaa55"}
    }

    Canvas{
        id:canvas
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.horizontalCenter

        onPaint: {
            //récupère le contexte de dessin
            var contxt = canvas.getContext('2d')
            contxt.clearRect(0,0,width,height)

            var centerX = width/2
            var centerY = height/2
            var radius = 0.9 * Math.min(width, height)/2 //Le centre du graphique
            var startAngle = 0.0
            var endAngle = 0.0
            for (var index = 0; index < model.count; index++) {
                startAngle = endAngle
                endAngle = startAngle + model.get(index).value*2*Math.PI/360 //pr mettre en radians
                contxt.fillStyle = model.get(index).color
                // draw the piece
                contxt.beginPath()
                contxt.moveTo(centerX, centerY)
                contxt.arc(centerX, centerY, radius, startAngle, endAngle, false)
                contxt.lineTo(centerX, centerY) //Fermeture de l'arc
                contxt.fill()
                contxt.stroke()
            }
        }
    }

    ListView{
        id:view
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.margins: 16
        clip: true
        focus: true
        model: model
        delegate: Item{
            width: view.width
            height: 32
            Rectangle{
                anchors.fill: parent
                anchors.margins: 1
                radius: 2
                color: model.color
                border.color: Qt.lighter(root.color)
            }
            Text{
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.margins: 8
                text: model.label
                color: "#1C1C1C"
            }
            Text{
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.margins: 8
                text: model.value
                color: "#1C1C1C"
            }
        }
    }
}
