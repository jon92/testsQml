import QtQuick 2.0

Rectangle {
    width: 600
    height: 400
    QtObject {
        id: m
        property int startX: 120
        property int startY: 210
        property int endX: 120
        property int endY: 210
        property int state: 0
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
            contxt.moveTo(m.startX,  m.startY);
            contxt.lineTo(m.endX,m.endY);
            contxt.lineWidth =  4;
            contxt.strokeStyle = "#ff8966";
            contxt.stroke();
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPositionChanged: {
                if(m.state == 1){
                    m.endX = mouseX
                    m.endY = mouseY
                    console.debug(mouseX)
                    console.debug(mouseY)
                    canvas.requestPaint()
                }
            }
            onPressed: {
                m.state = 1
                m.startX = mouseX
                m.startY = mouseY
                m.endX = m.startX
                m.endY = m.startY
                canvas.requestPaint()
            }
            onReleased: {
                m.state = 0
                m.endX = m.startX
                m.endY = m.startY
                canvas.requestPaint()
            }
        }
    }
}
