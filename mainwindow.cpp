#include <QMainWindow>
#include <QDialog>
#include <QQuickWidget>
#include <QDesktopWidget>
#include <QApplication>
#include <iostream>
#include <QDebug>
#include <QString>
#include "floyd.h"
#include "mgraph.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <string>

using namespace std;




MainWindow::MainWindow(QWidget *parent)
    : QObject(parent)
    , ui(new Ui::MainWindow)
{
    QUrl source("qrc:/mainwindow.qml");

}

MainWindow::~MainWindow()
{
    delete ui;
}



