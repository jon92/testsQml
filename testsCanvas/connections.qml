import QtQuick 2.0

Rectangle {
    width: 600
    height: 400
    QtObject {
        id: m
        property int mousePositionX: 120
        property int mousePositionY: 210
    }
    Rectangle{
        id: redNode
        width: 70
        height: 20
        x: 50
        color:"red"
        anchors.top : parent.verticalCenter
    }
    Rectangle{
        id: blueNode
        width: 70
        height: 20
        x: 250
        y: 90
        color:"blue"
    }

    Canvas {
        id: canvas
        anchors.fill: parent

        onPaint: {
            //récupère le contexte de dessin
            var contxt = canvas.getContext('2d')
            contxt.clearRect(0,0,width,height)

            // Crée une ligne entre les deux rectangles
            contxt.beginPath()
            contxt.moveTo(m.mousePositionX,  m.mousePositionY);
            contxt.lineTo(blueNode.x,blueNode.y + blueNode.height/2);
            contxt.lineWidth =  4;
            contxt.strokeStyle = "#ff8966";
            contxt.stroke();
        }

        MouseArea{
            anchors.fill: parent
            onPressed: {
                console.debug(mouseX)
                console.debug(mouseY)
                m.mousePositionX = mouseX
                m.mousePositionY = mouseY
                canvas.requestPaint()
            }
        }
    }
}
