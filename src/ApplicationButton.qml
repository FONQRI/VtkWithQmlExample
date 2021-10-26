import QtQuick 2.0
import QtQuick.Controls 2.14

Button{
    contentItem: Row
    {
       anchors.margins:4
        spacing:5
        anchors.fill:parent
        Image{
            source:"img/application.png"
            sourceSize: Qt.size(30,30)
            anchors.verticalCenter: parent.verticalCenter
        }

        Text{
        text: name
        font.bold: true
        color:"#e3e3e3"
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    }

    background: Rectangle
    {
//        anchors.fill:parent
        color:hovered ?"#3f51b5":"transparent"
        radius: 5
    }

}
