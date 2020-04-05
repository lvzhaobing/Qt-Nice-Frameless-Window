QT       += core gui quickwidgets qml quick
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = lib
TARGET = frameless_plugin
QT += qml quick widgets
CONFIG += plugin c++11

TARGET = $$qtLibraryTarget($$TARGET)
uri = Frameless

HEADERS += \
    frameless_plugin.h \
    framelesswindow.h

win32{
	SOURCES += \
		framelesswindow.cpp
}
macx{
    OBJECTIVE_SOURCES += \
		framelesswindow.mm
}
include (../projectinclude/common.pri)

DISTFILES += qmldir

OTHER_FILES += qmldir

CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/../debug/Frameless
} else {
    DESTDIR = $$PWD/../release/Frameless
}

RESOURCES += \
    Frameless.qrc

# 拷贝qmldir 到生成目录
cpqmldir.files += qmldir
cpqmldir.path = $$DESTDIR
COPIES += cpqmldir

SOURCES += \
    frameless_plugin.cpp
