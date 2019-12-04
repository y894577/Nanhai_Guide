#include "mainwindow.h"
#include "main_welcome.h"
#include "test.h"
#include "mgraph.h"

#include <QApplication>
#include <QPushButton>
#include <QDebug>
#include <QSpinBox>
#include <QSlider>
#include <QLayout>
#include <QMainWindow>
#include <QQuickWidget>
#include <QUrl>
#include <QtQuickControls2>
#include <QDesktopWidget>
#include <QtQml>


Q_INVOKABLE int main(int argc, char *argv[]);
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);



    //定义类型
    qmlRegisterType<MainWindow>("MainWindow",1,0,"Main");

    //主窗口
    MainWindow *view = new MainWindow();

    view->enter();


    return a.exec();
}
