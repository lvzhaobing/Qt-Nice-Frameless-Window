import QtQuick 2.0

Item {
    id: root
    property var window: null

    signal minBtnClicked();
    signal maxBtnClicked();
    signal closeBtnClicked();

    Rectangle {
        id: titleBarRect
        width: parent.width
        height: 50
        color: "blue"
        MouseArea {
            width: parent.width
            height: parent.height
            onDoubleClicked: {
                maxBtnClicked();
                window.showMaximized();
            }
        }
    }


    function setTitleBarHeight(titleBarHeight) {
        titleBarRect.height = titleBarHeight;
    }

    function setParentWindow(window) {
        root.window = window;
        root.window.setTitleBarItem(titleBarRect);
    }
}
