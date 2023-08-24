import QtQuick 2.9
import QtQuick.Controls 2.15


Image {
    id: root
    source: "images/background.png"

    AnimatedImage {
        id: wanwan
        source: "images/wanwan.gif"
        anchors.centerIn: parent
        opacity: 0
    }
    AnimatedImage {
        id:awoo_right
        source: "images/awoo_right.gif"
        anchors { bottom: parent.bottom; right: parent.right }
        opacity: 0
    }
    AnimatedImage {
        id:awoo_left
        source: "images/awoo_left.gif"
        anchors { bottom: parent.bottom; left: parent.left }
        opacity: 0
    }
        SequentialAnimation {
        id: introAnimation1
        running: true
        ParallelAnimation {
            PropertyAnimation {
                property: "opacity"
                target: awoo_right
                from: 0
                to: 1
                duration: 750
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
        }
    }
    SequentialAnimation {
        id: introAnimation2
        running: true
        ParallelAnimation {
            PropertyAnimation {
                property: "opacity"
                target: awoo_left
                from: 0
                to: 1
                duration: 750
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
        }
    }
        SequentialAnimation {
        id: introAnimation3
        running: true
        ParallelAnimation {
            PropertyAnimation {
                property: "opacity"
                target: wanwan
                from: 0
                to: 1
                duration: 500
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
        }
    }
}
