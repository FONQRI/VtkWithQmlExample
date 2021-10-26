import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Shapes 1.14
import QtQuick.Layouts 1.12

Frame {
    height: 90
    background: Rectangle
    {
        anchors.fill:parent
        color:"#0a1b3d"
        radius:parent.width / 2
    }
    signal openFile();

RowLayout{
    anchors.fill: parent
    spacing: 60

    Button {
        id:aboutButton

        width: 70
        Layout.maximumHeight: 70
        Layout.maximumWidth:  70
        background:
            Image {
            anchors.fill: parent
            anchors.margins: 0
            source:aboutButton.hovered ? "img/about_hovered.png" : "img/about.png"
        }
    }
    Button {
        id:openfileButton

        Layout.maximumHeight: 70
        Layout.maximumWidth:  70
        width: 70
        background:
            Image {
            anchors.fill: parent
            anchors.margins: 0
            source:openfileButton.hovered ? "img/openfile_hovered.png":"img/openfile.png"
        }
        onClicked: openFile();
    }
    Button {
        id:saveButton

        Layout.maximumHeight: 70
        Layout.maximumWidth:  70
        width: 70
        background:
            Image {
            anchors.fill: parent
            anchors.margins: 0
            source:saveButton.hovered ? "img/save_hovered.png":"img/save.png"
        }
    }

    Button {
        id:playButton

        Layout.maximumHeight: 70
        Layout.maximumWidth:  70
        width: 70
        background:
            Image {
            anchors.fill: parent
            anchors.margins: 0
            source: playButton.hovered ?"img/play_hovedred.png" : "img/play.png"
        }
    }
}

}
