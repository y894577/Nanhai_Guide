import QtQuick 2.0
import MainWindow 1.0

Item {

    Rectangle{
        id: tang
        color: "red";
        width: 50
        height: 3
        x: 0
        y: 0
    }
    Main{
        id: test
        onBegin: return_length(x1,y1,x2,y2);
    }

}
