import QtQuick 2.4
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
import MainWindow 1.0

Item {
    id: element2
    width: 400
    height: 400
    property alias line8: line8

    Image {
        id: image
        x: 0
        y: -47
        width: 779
        height: 494
        source: "qrc:/img/map.png"
        fillMode: Image.PreserveAspectFit

        Rectangle {
            id: from0to5
            x: 163
            y: 328
            width: 110
            height: 3
            color: "#f5222d"
            rotation: 50
            visible: true
        }

        Rectangle {
            id: from9to1
            x: 263
            y: 230
            width: 40
            height: 3
            color: "#f5222d"
            rotation: 60
            visible: true
        }

        Rectangle {
            id: from
            x: 411
            y: 311
            width: 50
            height: 3
            color: "#f5222d"
            rotation: 80
            visible: true
        }

        Rectangle {
            id: line7
            x: 301
            y: 258
            width: 70
            height: 3
            color: "#f5222d"
            rotation: 110
            visible: true
        }

        Rectangle {
            id: line8
            x: 446
            y: 298
            width: 120
            height: 3
            color: "#f5222d"
            rotation: 120
            visible: true
        }

        Rectangle {
            id: line10
            x: 388
            y: 130
            width: 50
            height: 3
            color: "#f5222d"
            rotation: 60
            visible: true
        }

        Rectangle {
            id: line11
            x: 439
            y: 198
            width: 40
            height: 3
            color: "#f5222d"
            rotation: 60
            visible: true
        }

        Rectangle {
            id: line12
            x: 465
            y: 246
            width: 60
            height: 3
            color: "#f5222d"
            rotation: 50
            visible: true
        }

        Rectangle {
            id: line13
            x: 276
            y: 273
            width: 40
            height: 3
            color: "#f5222d"
            rotation: 60
            visible: true
        }

        Rectangle {
            id: line14
            x: 357
            y: 254
            width: 60
            height: 3
            color: "#f5222d"
            rotation: 50
            visible: true
        }

        Rectangle {
            id: line15
            x: 183
            y: 246
            width: 80
            height: 3
            color: "#f5222d"
            rotation: 130
            visible: true
        }

        //地点
        Rectangle {
            id: rectangle
            x: 215
            y: 366
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: gate
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("正门")
                clip: false
                font.family: "微软雅黑"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 19
            }
            //            MouseArea{
            //               anchors.fill: parent
            //               onClicked: {
            //                   test1.test1();
            ////                   rectangle.color = "red"

            //                   console.log("success");
            //               }
            //            }
        }

        Rectangle {
            id: rectangle1
            x: 167
            y: 254
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: college
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("学院楼")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle3
            x: 227
            y: 187
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: library
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("图书馆")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle5
            x: 386
            y: 263
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: canteen
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("食堂")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle7
            x: 404
            y: 144
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: playground
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("操场")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle9
            x: 500
            y: 238
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: dormitory
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("宿舍")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle11
            x: 432
            y: 193
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: gymnasium
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("体育馆")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle13
            x: 422
            y: 327
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: action
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("学活")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle17
            x: 323
            y: 199
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: element19
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("教学楼")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle19
            x: 251
            y: 238
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: square
                x: 8
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("广场")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: rectangle21
            x: 367
            y: 86
            width: 63
            height: 35
            color: "#a7d3c4"
            Text {
                id: basketball
                x: 11
                y: 5
                width: 44
                height: 25
                color: "#662f2f"
                text: qsTr("篮球场")
                font.pixelSize: 19
                font.family: "微软雅黑"
                verticalAlignment: Text.AlignVCenter
                clip: false
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Rectangle {
        id: rectangle15
        x: 294
        y: 238
        width: 63
        height: 35
        color: "#a7d3c4"
        Text {
            id: administration
            x: 8
            y: 5
            width: 44
            height: 25
            color: "#662f2f"
            text: qsTr("行政楼")
            font.pixelSize: 19
            font.family: "微软雅黑"
            verticalAlignment: Text.AlignVCenter
            clip: false
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
