# test2lib

While linking:
```
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::qt_static_metacall(QObject*, QMetaObject::Call, int, void**)':
mocs_compilation.cpp:(.text+0x0): multiple definition of `Base::qt_static_metacall(QObject*, QMetaObject::Call, int, void**)'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x0): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::signal_test_msg(QString)':
mocs_compilation.cpp:(.text+0x33c): multiple definition of `Base::signal_test_msg(QString)'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x33c): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::signal_test_done(int)':
mocs_compilation.cpp:(.text+0x38e): multiple definition of `Base::signal_test_done(int)'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x38e): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o):(.data.rel.ro+0x0): multiple definition of `Base::staticMetaObject'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):(.data.rel.ro+0x0): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::metaObject() const':
mocs_compilation.cpp:(.text+0x21c): multiple definition of `Base::metaObject() const'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x21c): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::qt_metacast(char const*)':
mocs_compilation.cpp:(.text+0x264): multiple definition of `Base::qt_metacast(char const*)'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x264): first defined here
/usr/bin/ld: /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest2.a(mocs_compilation.cpp.o): in function `Base::qt_metacall(QMetaObject::Call, int, void**)':
mocs_compilation.cpp:(.text+0x2b8): multiple definition of `Base::qt_metacall(QMetaObject::Call, int, void**)'; /home/user/work/cpp/tests/test2lib/src-driver/../bin-lib/lib/libtest1.a(mocs_compilation.cpp.o):mocs_compilation.cpp:(.text+0x2b8): first defined here
collect2: error: ld returned 1 exit status
gmake[2]: *** [CMakeFiles/testrt.dir/build.make:114: testrt] Error 1
gmake[1]: *** [CMakeFiles/Makefile2:84: CMakeFiles/testrt.dir/all] Error 2
gmake: *** [Makefile:136: all] Error 2
```
