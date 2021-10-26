//import QtQuick 2.14
//import QtQuick.Window 2.14

//Window {
//    visible: true
//    width: 1920
//    height: 1080
//    title: qsTr("Hello World")


//    MainWIndow{
//      anchors.fill: parent
//    }
//}
import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.3
import QtQuick.Controls.Material 2.2


ApplicationWindow {
    id: root
    minimumWidth: 1024
    minimumHeight: 700
    visible: true
    title: "VtkWithQmlExample"

    Material.primary: Material.Indigo
    Material.accent: Material.LightBlue
    MainWIndow{
        id: screenCanvasUI
        anchors.fill: parent

    }
}
