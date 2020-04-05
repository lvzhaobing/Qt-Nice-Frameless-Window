import QtQuick 2.0
Item {
    id: root
    property var window : null
    function setParentWindow(window) {
        root.window = window;
    }
}

