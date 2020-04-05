#-------------------------------------------------
#
# Project created by QtCreator 2017-10-20T09:59:00
#
#-------------------------------------------------

QT       += core gui quickwidgets qml quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = exampleforwindows
TEMPLATE = app
SOURCES += main.cpp

include (../projectinclude/common.pri)

RESOURCES += \
    exampleforwindows.qrc

CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/../debug
    QML_IMPORT_PATH = $$PWD/../debug
    QML_DESIGNER_IMPORT_PATH = $$PWD/../debug
} else {
    DESTDIR = $$PWD/../release
    QML_IMPORT_PATH = $$PWD/../release
    QML_DESIGNER_IMPORT_PATH = $$PWD/../release
}
