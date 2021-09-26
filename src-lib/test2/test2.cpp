#include "test2.h"

#include <iostream>


Test2::Test2(QObject* parent /*= nullptr*/):
    Base(parent)
{
    setStopRequested(false);
}


Test2::~Test2()
{
}


void Test2::slot_do_test()
{
    using std::cout;

    cout << "[Test2::slot_do_test]\n";
}


void Test2::slot_stop_test()
{
    using std::cout;

    cout << "[Test2::slot_stop_test]\n";
}
