import QtQuick 2.4
import QtQuick.Controls.Material 2.2
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2

import VtkWithQmlExample 1.0

Item {
    id: element



    VtkFboItem {
        id: vtkFboItem
        objectName: "vtkFboItem"
        anchors.fill: parent

        MouseArea {
            acceptedButtons: Qt.LeftButton
            anchors.fill: parent

            onPositionChanged: {
                canvasHandler.mouseMoveEvent(pressedButtons, mouseX, mouseY);
            }
            onPressed: {
                canvasHandler.mousePressEvent(pressedButtons, mouseX, mouseY);
            }
            onReleased: {
                canvasHandler.mouseReleaseEvent(pressedButtons, mouseX, mouseY);
            }
        }
    }

    TopBar{
        id:topBar
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter:parent.horizontalCenter
        onOpenFile:             canvasHandler.showFileDialog = true;

    }

//    Button {
//        id: openFileButton
//        text: "Open file"
//        highlighted: true
//        anchors.bottom: parent.bottom
//        anchors.margins: 50
//        anchors.horizontalCenter: parent.horizontalCenter
//        onClicked: {
//         console.log("O_o")
//            canvasHandler.showFileDialog = true;

//        }

//        ToolTip.visible: hovered
//        ToolTip.delay: 1000
//        ToolTip.text: "Open a 3D model into the canvas"
//    }

    ComboBox {
        id: representationCombobox
        visible: canvasHandler.isModelSelected
        width: 200
        model: ["Points", "Wireframe", "Surface"]
        currentIndex: 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 40
        anchors.topMargin: 30

        onActivated: canvasHandler.setModelsRepresentation(currentIndex);
    }

    Slider {
        id: opacitySlider
        visible: canvasHandler.isModelSelected
        width: 200
        value: 1
        from: 0.1
        to: 1
        stepSize: 0.01
        anchors.left: parent.left
        anchors.top: representationCombobox.bottom
        anchors.leftMargin: 40
        anchors.topMargin: 30

        onValueChanged: canvasHandler.setModelsOpacity(value);
    }

    Switch {
        id: gouraudInterpolationSwitch
        visible: canvasHandler.isModelSelected
        text: "Gouraud interpolation"
        anchors.left: parent.left
        anchors.top: opacitySlider.bottom
        anchors.leftMargin: 40
        anchors.topMargin: 30

        onCheckedChanged: canvasHandler.setGouraudInterpolation(checked);
    }

    SpinBox {
        id: modelColorR
        visible: canvasHandler.isModelSelected
        value: 3
        from: 0
        to: 255
        onValueChanged: canvasHandler.setModelColorR(value);
        anchors.left: parent.left
        anchors.top: gouraudInterpolationSwitch.bottom
        anchors.leftMargin: 40
        anchors.topMargin: 30
    }

    SpinBox {
        id: modelColorG
        visible: canvasHandler.isModelSelected
        value: 169
        from: 0
        to: 255
        onValueChanged: canvasHandler.setModelColorG(value);
        anchors.left: parent.left
        anchors.top: modelColorR.bottom
        anchors.leftMargin: 40
        anchors.topMargin: 25
    }

    SpinBox {
        id: modelColorB
        visible: canvasHandler.isModelSelected
        value: 244
        from: 0
        to: 255
        onValueChanged: canvasHandler.setModelColorB(value);
        anchors.left: parent.left
        anchors.top: modelColorG.bottom
        anchors.leftMargin: 40
        anchors.topMargin: 25
    }

    Label {
        id: positionLabelX
        visible: canvasHandler.isModelSelected
        text: "X: " + canvasHandler.modelPositionX
        font.pixelSize: 12
        anchors.bottom: positionLabelY.top
        anchors.left: parent.left
        anchors.margins: 40
    }

    Label {
        id: positionLabelY
        visible: canvasHandler.isModelSelected
        text: "Y: " + canvasHandler.modelPositionY
        font.pixelSize: 12
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 40
    }

    FileDialog {
        id: openModelsFileDialog
        visible: canvasHandler.showFileDialog
        title: "Import model"
        folder: shortcuts.documents
        nameFilters: ["Model files" + "(*.stl *.STL *.obj *.OBJ)", "All files" + "(*)"]

        onAccepted: {
            canvasHandler.showFileDialog = false;
            canvasHandler.openModel(fileUrl);
        }
        onRejected: {
            canvasHandler.showFileDialog = false;
        }
    }


//    ApplicationPanel {
//        anchors
//        {
//            top: parent.top
//            left: parent.left
//            bottom: parent.bottom
//        }
//    }

    PropertyPanel
    {
        anchors
        {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
