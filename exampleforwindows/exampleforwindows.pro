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
HEADERS  +=
FORMS    +=

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Frameless/release/ -lframeless
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Frameless/debug/ -lframeless
else:macx: LIBS += -L$$OUT_PWD/../Frameless/ -lframeless

INCLUDEPATH += $$PWD/../Frameless
DEPENDPATH += $$PWD/../framelesswindow

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/release/libframeless.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/debug/libframeless.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/release/frameless.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../Frameless/debug/frameless.lib
else:macx: PRE_TARGETDEPS += $$OUT_PWD/../Frameless/libframeless.a

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
