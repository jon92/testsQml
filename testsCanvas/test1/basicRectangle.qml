import QtQuick 2.0

Rectangle {
    id: root
    width: 360
    height: 360
    color: "#3C3C3C"

    Canvas {
        id: canvas
        width: 300
        height: 300
        anchors.centerIn: parent

        onPaint: {
            //récupère le contexte de dessin
            var contxt = canvas.getContext('2d')

            // Crée un rectangle
            contxt.rect(50,50,200,200)
            contxt.fillStyle = "#FFF0A5"
            contxt.fill()

            contxt.lineWidth =  4
            contxt.strokeStyle = "#ff8966"
            contxt.stroke()
        }
    }
}
