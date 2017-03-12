import QtQuick %{QtQuickVersion}
import QtQuick.Controls %{QtQuickControls2Version}
import QtQuick.Layouts %{QtQuickLayoutsVersion}
import Fluid.Controls %{FluidControlsVersion}

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("%{ApplicationTitle}")
    header: ToolBar {
        RowLayout {
            anchors {
                fill: parent
                leftMargin: Units.mediumSpacing
            }

            HeadlineLabel {
                text: qsTr("%{ApplicationTitle}")
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignLeft
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }
}
