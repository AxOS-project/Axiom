import QtQuick

Item {
    width: 120
    height: 40

    property string currentTime: "00:00:00"

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            const now = new Date()
            const h = now.getHours().toString().padStart(2, "0")
            const m = now.getMinutes().toString().padStart(2, "0")
            const s = now.getSeconds().toString().padStart(2, "0")
            currentTime = `${h}:${m}:${s}`
        }
    }

    Text {
        text: currentTime
        anchors.centerIn: parent
        font.pixelSize: 16
        color: "white"
    }
}
