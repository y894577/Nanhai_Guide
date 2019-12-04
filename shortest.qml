import QtQuick 2.4
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
import MainWindow 1.0

Item {
    id: element2
    width: 400
    height: 400

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 717
        height: 443
        color: "#accbee"
        radius: 0
        border.width: 0
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#9795f0"
            }

            GradientStop {
                position: 1
                color: "#fbc8d4"
            }
        }
        ComboBox {
            id: comboBox1
            x: 355
            y: 65
            width: 210
            height: 40
            textRole: "key"
            model: ListModel {
                id: model1
                ListElement {
                    value: 0
                    key: "正门"
                }

                ListElement {
                    key: "图书馆"
                    value: 1
                }

                ListElement {
                    value: 2
                    key: "行政楼"
                }

                ListElement {
                    value: 3
                    key: "学活"
                }

                ListElement {
                    value: 4
                    key: "教学楼"
                }

                ListElement {
                    value: 5
                    key: "学院楼"
                }

                ListElement {
                    value: 6
                    key: "饭堂"
                }

                ListElement {
                    value: 7
                    key: "体育馆"
                }

                ListElement {
                    value: 8
                    key: "篮球场"
                }
                ListElement {
                    key: "广场"
                    value: 9
                }
                ListElement {
                    key: "宿舍"
                    value: 10
                }
                ListElement {
                    key: "操场"
                    value: 11
                }

            }
            currentIndex: -1
            editable: false
        }

        Text {
            id: element1
            x: 159
            y: 69
            width: 119
            height: 32
            color: "#f7f7f7"
            text: qsTr("起点")
            font.weight: Font.Normal
            font.family: "微软雅黑"
            font.pixelSize: 27
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            lineHeight: 1
        }

        ComboBox {
            id: comboBox2
            x: 355
            y: 201
            width: 210
            height: 40
            textRole: "key"
            model: ListModel {
                id : model2
                ListElement {
                    value: 0
                    key: "正门"
                }

                ListElement {
                    key: "图书馆"
                    value: 1
                }

                ListElement {
                    value: 2
                    key: "行政楼"
                }

                ListElement {
                    value: 3
                    key: "学活"
                }

                ListElement {
                    value: 4
                    key: "教学楼"
                }

                ListElement {
                    value: 5
                    key: "学院楼"
                }

                ListElement {
                    value: 6
                    key: "饭堂"
                }

                ListElement {
                    value: 7
                    key: "体育馆"
                }

                ListElement {
                    value: 8
                    key: "篮球场"
                }
                ListElement {
                    key: "广场"
                    value: 9
                }
                ListElement {
                    key: "宿舍"
                    value: 10
                }
                ListElement {
                    key: "操场"
                    value: 11
                }

            }
            currentIndex: -1
            editable: false
        }

        Text {
            id: element3
            x: 159
            y: 205
            width: 119
            height: 32
            color: "#ffffff"
            text: qsTr("终点")
            font.family: "微软雅黑"
            font.pixelSize: 27
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            lineHeight: 1
        }

        Rectangle {
            id: rectangle2
            x: 236
            y: 321
            width: 89
            height: 36
            radius: 15
            border.width: 0
            opacity: 0.5
            border.color: "#aad1bf"
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#accbee"
                }

                GradientStop {
                    position: 1
                    color: "#e7f0fd"
                }
            }

            Text {
                id: element4
                x: 25
                y: 8
                text: qsTr("确定")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    //显示图片
                    route.text=""
                    var visit = ma.receive_shortest(comboBox1.currentIndex,comboBox2.currentIndex);
//                    for(var i=0;i<5;i++){
//                        var map = Qt.createComponent("map.qml");
//                        var object = map.createObject(show_map);
//                        object.x = -rectangle2.x;
//                        object.y = -rectangle2.y;
//                        map.destroy();
//                    }
                    var place = new Array
                    place[0] = "正门"
                    place[1] = "12"
                    place[2] = ""
                    place[3] = "aa"
//                    route.text = model1.get(transmit_data_point.change_point
//                            (comboBox1.currentIndex,comboBox2.currentIndex,0)).key+"->"
                    for(var j=0;j<visit.length-1;j++){
                        var n = transmit_data_point.change_point
                                (comboBox1.currentIndex,comboBox2.currentIndex,j)
                        var m = transmit_data_point.change_point
                                (comboBox1.currentIndex,comboBox2.currentIndex,j+1)
                        if(model1.get(n)==model1.get(m))
                                j=j+1;
                        route.text=route.text+model1.get(n).key+"->"
                        console.log("长度",transmit_data_point.change_point
                                    (comboBox1.currentIndex,comboBox2.currentIndex,j))
                    }
                    route.text = route.text+model1.get(transmit_data_point.change_point
                            (comboBox1.currentIndex,comboBox2.currentIndex,visit.length-1)).key

                    //only for test
//                    for(var i=0;i<3;i++){
//                        var ojtest = Qt.createComponent("abc.qml");
//                        var oj = ojtest.createObject(container);
//                        oj.x=transmit_data_x.return_x(i)-rectangle2.x-10;
//                        oj.y=transmit_data_y.return_y(i)-rectangle2.y+20;
//                        //console.log(oj.x,transmit_data_y.return_y(i))
//                        oj.width=100;
//                        oj.rotation = transmit_data_rotation.return_rotation(oj.x,oj.y);
//                        oj.height=3;

//                        ojtest.destroy();
//                    }
                }


            }

            Main{
                id: ma
                onBegin: receive_shortest(comboBox1.currentIndex,comboBox2.currentIndex)
            }
            Item {
                id: show_map
                x: 0
                y: 0
                opacity: 1

            }
            Rectangle{
                id: container
                width: 0
                height: 0
                x: 0
                y: 0
            }
            Main{
                id: transmit_data_x
                onBegin: return_x(i);

            }
            Main{
                id: transmit_data_y
                onBegin: return_y(i);
            }
            Main{
                id: transmit_data_rotation
                onBegin: return_rotation(i,j);
            }
            Main{
                id: transmit_data_visit
                onBegin: return_length(start,end);
            }
            Main{
                id: transmit_data_point
                onBegin: change_point(j);
            }
            Text {
                id: route
                x: 100
                y: 75
                width: 82
                height: 46
                color: "#9e1068"
                text: ""
                style: Text.Normal
                font.weight: Font.Black
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
                font.family: "微软雅黑"
            }
        }

        Rectangle {
            id: rectangle3
            x: 416
            y: 321
            width: 89
            height: 36
            radius: 15
            border.width: 0
            Text {
                id: element5
                x: 25
                y: 8
                text: qsTr("取消")
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            border.color: "#aad1bf"
            opacity: 0.5
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#accbee"
                }

                GradientStop {
                    position: 1
                    color: "#e7f0fd"
                }
            }
        }
        MouseArea{
            onClicked: {
                comboBox1.currentIndex=-1
                comboBox2.currentIndex=-1
            }
        }
    }
}
