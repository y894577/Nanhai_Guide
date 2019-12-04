#ifndef DETAILSPOT_H
#define DETAILSPOT_H

#include <QMainWindow>
#include <QDialog>

class DetailSpot : public QMainWindow{
    Q_OBJECT
public:
    DetailSpot(QWidget *parent = nullptr);
    ~DetailSpot();

private slots:
    void on_pushButton_MainGate_clicked();

private:
    QMainWindow windows;

};

#endif // DETAILSPOT_H


