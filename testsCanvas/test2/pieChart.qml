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
        ListElement{ label: "Psykokwak"; value:50; color:"#152025"}
        ListElement{ label: "Mewtoo"; value:100; color:"#123456"}
        ListElement{ label: "Abra"; value:40; color:"#8b3450"}
        ListElement{ label: "Racaillou"; value:40; color:"#bbaa55"}
    }
}
