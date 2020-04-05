import QtQuick 2.0
import Frameless 1.0
import "qrc:/qml/Window"

FramelessWindow {
    id:window
    title: "Frameless"
    source: "qrc:/qml/MainPageView.qml"

    Component.onCompleted: {
        if(rootItem !== null)
            rootItem.setParentWindow(window);
    }
}
