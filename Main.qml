import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "StackView Örneği"
    color:"lightgray"

    StackView {
        id:stackView
        anchors.fill:parent
        initialItem: page1
    }
    Component {
        id:page1
        Rectangle {
            id:firstRectangle
            width: 400
            height: 300
            color:"lightgreen"
                Text {
                    text:"Burasi Ilk Sayfa"
                    anchors.centerIn: parent
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 30
                    font.bold: true
                }
                Button {
                    text:"2. sayfaya git"
                    width: 150
                    height: 50
                    onClicked: stackView.push(page2)

                }
        }
    }
    Component {
        id:page2
        Rectangle {
            id:secondRectangle
            width: 400
            height: 300
            color:"lightblue"
                Text {
                    text:"Burasi Ikinci Sayfa"
                    anchors.centerIn: parent
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 30
                    font.bold: true

                }
                Button {
                    text:"1. sayfaya git"
                    width: 150
                    height: 50
                    onClicked: stackView.push(page1)

                }
        }
    }


}
