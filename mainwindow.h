#ifndef MAINWINDOW_H
#define MAINWINDOW_H


#include <QMainWindow>
#include <QDialog>
#include <QQuickWidget>
#include <QDesktopWidget>
#include <QApplication>
#include <QDebug>
#include <QString>
#include <QTextCodec>

#include "floyd.h"
#include "mgraph.h"

#include <string>
#include <iostream>
#include <math.h>

using namespace std;

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QObject
{
    Q_OBJECT

private:
    Ui::MainWindow *ui;
    QQuickWidget *view;
    QQuickWidget *welcome = new QQuickWidget;
    MGraph *map = new MGraph(12,12);
    string visit;

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

public slots:

    //从welcome进入map
    Q_INVOKABLE void enter(){
        welcome->setSource(QUrl("qrc:/main.qml"));
        welcome->resize(1000,600);
        welcome->show();
    }


    Q_INVOKABLE void receive_click(){
        welcome->~QQuickWidget();
        welcome->destroyed();

        view= new QQuickWidget;
        view->setSource(QUrl("qrc:/map.qml"));
        view->resize(1000,600);
        view->show();

    }


    //跳转到最短路径
    Q_INVOKABLE void shortest(){
        view= new QQuickWidget;
        view->setSource(QUrl("qrc:/shortest.qml"));
        view->resize(1000,600);

        view->show();
    }

    //跳转到浏览全校


    //确定最短路径

    Q_INVOKABLE QString receive_shortest(int start,int end){
        Floyd *from_to = new Floyd(*map);
        visit = from_to->search_shortest(start,end);
        QString readString = QString::fromStdString(visit);
        //转码
        //mingw采用的utf8
        QTextCodec *gbk = QTextCodec::codecForName("UTF-8");
        QString route = gbk->toUnicode(readString.toUtf8());
//        qDebug("%s",qPrintable(readString));
        qDebug()<<visit.length();
//        for(int i=0;i<visit.length();i++)
//            qDebug()<<"string"<<int(visit[i]);
        return route;
    }

    //将路线转换成点
    Q_INVOKABLE int change_point(int start,int end,int i){
        //char x = visit[i];
        Floyd *from_to = new Floyd(*map);
        visit = from_to->search_shortest(start,end);
//        qDebug()<<"test"<<int(visit[i]);
        return int(visit[i]);
    }


    //返回坐标
    Q_INVOKABLE int return_x(int num){
        return map->search_coodinate_x(num);
    }

    Q_INVOKABLE int return_y(int num){
        return map->search_coodinate_y(num);
    }

    Q_INVOKABLE double return_rotation(int x,int y){
        double rotation = 180-180*atan2(x,y)/3.14;
        return rotation;
    }

    Q_INVOKABLE double return_length(int x1,int y1,int x2,int y2){
        double x = (x1-x2)*(x1-x2);
        double y = (y1-y2)*(y1-y2);
        return sqrt(x+y);
    }


signals:
    void begin();
    void return_x();
    void return_y();

};
#endif // MAINWINDOW_H
