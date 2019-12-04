import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.3
import QtQuick.Window 2.13

Item {
    id: element1
    width: 400
    height: 400
    property alias button: button
    property alias element1: element1

    Image {
        id: image
        anchors.rightMargin: -328
        anchors.bottomMargin: -87
        anchors.leftMargin: 0
        anchors.topMargin: -67
        anchors.fill: parent
        transformOrigin: Item.Center
        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/welcome"

        Rectangle {
            id: rectangle
            x: 1
            y: 178
            width: 727
            height: 106
            color: "#f6f4f4"
            opacity: 0.5

            Text {
                id: element
                x: 211
                y: 41
                width: 309
                height: 43
                text: qsTr("华南师范大学导游系统")
                style: Text.Raised
                font.weight: Font.Black
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 32
            }
        }

        //        Rectangle {
        Button {
            id: button
            x: 311
            y: 321
            //                color: "#b7c2d5"
            //                radius: 10
            width: 107
            height: 25
            text: qsTr("ENTER")
            highlighted: false
            display: AbstractButton.TextOnly
            autoRepeat: false
            checked: true
            focusPolicy: Qt.StrongFocus
            font.strikeout: false
            font.bold: true
            font.pointSize: 18
            font.family: "Courier"

            //            }
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:320;anchors_width:400;anchors_x:0;anchors_y:38}
}
##^##*/

