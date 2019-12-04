#ifndef MAIN_WELCOME_H
#define MAIN_WELCOME_H

#include <QDialog>
#include <QMainWindow>
#include "mainwindow.h"

QT_BEGIN_NAMESPACE
namespace Ui {
class main_welcome;
}
QT_END_NAMESPACE

class main_welcome : public QDialog
{
    Q_OBJECT

public:
    explicit main_welcome(QWidget *parent = nullptr);
    ~main_welcome();

private slots:
    void on_pushButton_clicked();

private:
    Ui::main_welcome *ui;
    QMainWindow *window;
//    MainWindow win;
};

#endif // MAIN_WELCOME_H
