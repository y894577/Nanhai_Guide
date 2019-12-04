#include "Painter.h"
#include <QLabel>
#include <QEvent >
Painter::Painter(QWidget *parent) :
    QWidget(parent),la(new QLabel(this))
{
    la->setText("PaintTest Label");
    la->resize(100,190);

    la->installEventFilter(this);
}
void Painter::paintEvent(QPaintEvent *) {
    QPainter painter(this); // this 是 PaintTest 的指针
    painter.setPen(Qt::gray);
    painter.setBrush(Qt::green);
    painter.drawRect(10, 10, 50, 50);
}
