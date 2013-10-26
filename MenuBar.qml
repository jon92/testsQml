import QtQuick 2.0

Rectangle {
   id:menuBar
   height: 70
   width: parent.width
   color: "#14171c"

       Rectangle{
           id: labelList
           z: 1
           height : 30
           width: parent.width
           color : "#101013"
           Row{

               spacing:10
               Button{
                   id: fileButton
                   y: 5
                   onButtonClick: {
                       menuListView.currentIndex = 0
                       editButton.buttonColor = "#0b2135"
                       buttonColor = "#123556"
                   }
                   buttonColor: "#123556"
                   Text {
                          anchors.centerIn: parent
                          text: "File"
                          color : "white"
                   }
               }
               Button{
                   id: editButton
                   y: 5
                   onButtonClick: {
                       menuListView.currentIndex = 1
                       fileButton.buttonColor = "#0b2135"
                       buttonColor = "#123556"
                   }
                   buttonColor: "#0b2135"
                   Text {
                          anchors.centerIn: parent
                          text: "Edit"
                          color : "white"
                   }
               }
           }
       }
        Rectangle{
            color: "#123556"
            width : parent.width
            height : 70
           VisualItemModel{
                    id: menuListModel
                    FileMenu{
                        width: menuListView.width
                        height: menuBar.height
                        y : 40
                    }
                    EditMenu{
                        width:  menuListView.width
                        height: menuBar.height
                        y : 40
                    }
           }

           ListView{
                    id: menuListView

                    //Anchors are set to react to window anchors
                    anchors.fill:parent
                    anchors.bottom: parent.bottom
                    width:parent.width
                    height: parent.height
                    anchors.leftMargin: 20

                    //the model contains the data
                    model: menuListModel

                    //control the movement of the menu switching
                    snapMode: ListView.SnapOneItem
                    orientation: ListView.Horizontal
                    boundsBehavior: Flickable.StopAtBounds
                    flickDeceleration: 5000
                    highlightFollowsCurrentItem: true
                    highlightMoveDuration:240
                    highlightRangeMode: ListView.StrictlyEnforceRange
           }
        }
}
