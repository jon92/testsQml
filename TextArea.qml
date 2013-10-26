import QtQuick 2.0

Rectangle{
        width : 700
        height : parent.height
       color :  "white"

    TextEdit {
        id : textEditor
        anchors.centerIn: parent
        width : 600
        height : parent.height -100
        wrapMode: TextEdit.Wrap
    }
}
