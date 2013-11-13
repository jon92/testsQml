import QtQuick 2.0

Rectangle {
    width: 150
    height: 400

    Canvas{
        id:canvas
        anchors.fill: parent

        onPaint: {
            var contxt = canvas.getContext('2d')
            contxt.strokeStyle = "#ff5050"
            contxt.fillStyle = "#5050ff"
            contxt.lineWidth = 2

            //Arrow
            contxt.moveTo(10,50)
            contxt.lineTo(110,50)
            contxt.lineTo(100,46)
            contxt.arcTo(104, 50, 100, 54, 5)
            contxt.lineTo(110, 50)

            //Rounded rectangle
            contxt.moveTo(10,150)
            contxt.lineTo(110,150)
            contxt.arcTo(115, 150, 115, 155, 5)
            contxt.lineTo(115,200)
            contxt.arcTo(115, 205, 110, 205, 5)
            contxt.lineTo(10,205)
            contxt.arcTo(5, 205, 5, 200, 5)
            contxt.lineTo(5,155)
            contxt.arcTo(5, 150, 10, 150, 5)

            contxt.fill()
            contxt.stroke()
        }
    }
}
