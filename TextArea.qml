import QtQuick 2.0

Rectangle{
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
