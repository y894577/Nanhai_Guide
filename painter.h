#ifndef PAINTER_H
#define PAINTER_H

#include <QWidget>
#include <QPainter>
#include <QLabel>

class Painter : public QWidget
{
    Q_OBJECT
private:
     QLabel *la;
 public:
     explicit Painter(QWidget *parent = 0);
     void paintEvent(QPaintEvent *);

};

#endif // PAINTER_H
