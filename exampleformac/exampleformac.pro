#-------------------------------------------------
#
# Project created by QtCreator 2017-10-20T15:34:28
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = exampleformac
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui
include (../projectinclude/common.pri)

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
