#-------------------------------------------------
#
# Project created by QtCreator 2017-10-20T14:01:10
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = examplesimplest
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Frameless/release/ -lframeless
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Frameless/debug/ -lframeless
else:macx: LIBS += -L$$OUT_PWD/../Frameless/ -lframeless

INCLUDEPATH += $$PWD/../Frameless
DEPENDPATH += $$PWD/../Frameless

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/release/libframeless.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/debug/libframeless.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/release/frameless.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/debug/frameless.lib
else:macx: PRE_TARGETDEPS += $$OUT_PWD/../Frameless/libframeless.a

include (../projectinclude/common.pri)
