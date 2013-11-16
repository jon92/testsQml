import QtQuick 2.0

Rectangle {
    width: 450
    height: 600

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

            //Arc
            contxt.moveTo(10, 250)
            contxt.arc(30,280, 3.14, 0, 100, true)

            //courbe de béziers
            contxt.lineWidth="3";
            contxt.strokeStyle="black";
            contxt.moveTo(10,400);
            contxt.bezierCurveTo(100,100,100,300,300,300);

            contxt.fill()
            contxt.stroke()
        }
    }
}
