#ifndef TEST_H
#define TEST_H
#include<QObject>
#include "main_welcome.h"

class test:public QObject
{
    Q_OBJECT
private:
    main_welcome *win;
public:
    test();
public slots:
    Q_INVOKABLE void test1(){
        win = new main_welcome();
        win->show();
    }
signals:
    void begin();
};

#endif // TEST_H
