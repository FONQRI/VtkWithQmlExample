import QtQuick 2.4

Item {
    id: element



    TopBar{
        id:topBar
        anchors.top: parent.top
        anchors.topMargin: 10
        width: parent.width/3
        anchors.horizontalCenter:parent.horizontalCenter
    }

    ListView {
        anchors
        {
            top: topBar.bottom
            right: parent.right
//            left: parent.left
            bottom: parent.bottom
        }
        id: listView
        width: parent.width / 5
//        anchors.top: parent.top
//        anchors.topMargin: 0
//        anchors.bottom: parent.bottom
//        anchors.bottomMargin: 0
//        anchors.right: parent.right
//        anchors.rightMargin: 0
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
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                spacing: 10
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
