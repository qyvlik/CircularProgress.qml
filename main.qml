import QtQuick 2.0

CircularProgress{
    id:canvas
    anchors.fill: parent
    arcWidth:2
    radius: 50
    arcColor: "red"

    Text{
        anchors.centerIn: parent
        font.pointSize: 15
        text:Math.floor((canvas.progress / 360) * 100 )+ "%"
    }

    Timer{
        id:timer
        running:true
        repeat: true
        interval:50
        onTriggered:{
            canvas.progress+=1;
            if(canvas.progress >= 360) {
                canvas.progress=0;
            }
            canvas.requestPaint();
        }
    }
}


