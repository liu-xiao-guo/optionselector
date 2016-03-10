import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "optionselector.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("optionselector")

        Flickable {
            width: parent.width
            height: parent.height
            contentHeight: layout.childrenRect.height

            Column {
                id: layout
                anchors.fill: parent
                spacing: units.gu(3)

                OptionSelector {
                    text: i18n.tr("Normal")
                    model: [i18n.tr("Value 1"),
                        i18n.tr("Value 2"),
                        i18n.tr("Value 3"),
                        i18n.tr("Value 4")]
                }

                OptionSelector {
                    text: i18n.tr("Expanded")
                    expanded: true
                    model: [i18n.tr("Value 1"),
                        i18n.tr("Value 2"),
                        i18n.tr("Value 3"),
                        i18n.tr("Value 4")]
                }
                OptionSelector {
                    objectName: "optionselector_multipleselection"
                    text: i18n.tr("Multiple Selection")
                    expanded: false
                    multiSelection: true
                    model: [i18n.tr("Value 1"),
                        i18n.tr("Value 2"),
                        i18n.tr("Value 3"),
                        i18n.tr("Value 4")]
                }
                OptionSelector {
                    text: i18n.tr("Custom model")
                    model: customModel
                    expanded: true
                    colourImage: true
                    delegate: selectorDelegate
                }
                Component {
                    id: selectorDelegate
                    OptionSelectorDelegate { text: name; subText: description; iconSource: image }
                }
                ListModel {
                    id: customModel
                    ListElement { name: "Name 1"; description: "Description 1"; image: "images/icon2.jpg" }
                    ListElement { name: "Name 2"; description: "Description 2"; image: "images/icon2.jpg" }
                    ListElement { name: "Name 3"; description: "Description 3"; image: "images/icon2.jpg" }
                    ListElement { name: "Name 4"; description: "Description 4"; image: "images/icon2.jpg" }
                }
                OptionSelector {
                    text: i18n.tr("Label")
                    model: [i18n.tr("Value 1"),
                        i18n.tr("Value 2"),
                        i18n.tr("Value 3"),
                        i18n.tr("Value 4"),
                        i18n.tr("Value 5"),
                        i18n.tr("Value 6"),
                        i18n.tr("Value 7"),
                        i18n.tr("Value 8")]
                    containerHeight: itemHeight * 4
                }
                OptionSelector {
                    text: i18n.tr("Label")
                    expanded: true
                    model: [i18n.tr("Value 1"),
                        i18n.tr("Value 2"),
                        i18n.tr("Value 3"),
                        i18n.tr("Value 4"),
                        i18n.tr("Value 5"),
                        i18n.tr("Value 6"),
                        i18n.tr("Value 7"),
                        i18n.tr("Value 8")]
                    containerHeight: itemHeight * 4
                }
            }
        }
    }
}

