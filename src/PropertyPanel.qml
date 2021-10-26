import QtQuick 2.0
import QtQuick.Controls 2.14

Rectangle
{
    width: parent.width / 5
    color: "#06091a"
    radius: 10


    Rectangle
    {
        width: 10
        color: "#06091a"
        anchors
        {

            right: parent.right
            top: parent.top
            bottom: parent.bottom

        }

    }

    ListView {
        id: listView
        anchors.fill: parent

        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }

        delegate: Item {
            width: listView.width
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter

            Row {
                id: row1
                anchors.fill:parent
         ApplicationButton
         {
             width: parent.width

         }
                spacing: 10
            }
        }
    }

}
