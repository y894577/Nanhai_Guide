import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    signal qmlSignal
    signal cSignal

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
}
