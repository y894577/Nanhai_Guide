#include "main_welcome.h"
#include "ui_main_welcome.h"
#include "mainwindow.h"

#include <QDialog>
#include <QMainWindow>

main_welcome::main_welcome(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::main_welcome)
{
    ui->setupUi(this);

}

main_welcome::~main_welcome()
{
    delete ui;
}

void main_welcome::on_pushButton_clicked()
{
//    window = new MainWindow(this);
//    this->close();
//    window->show();
}
