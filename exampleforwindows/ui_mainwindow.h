/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtQuickWidgets/QQuickWidget>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *action_MenuItem1;
    QAction *actionMenuItem2;
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    QQuickWidget *quickWidget;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(554, 300);
        action_MenuItem1 = new QAction(MainWindow);
        action_MenuItem1->setObjectName(QString::fromUtf8("action_MenuItem1"));
        actionMenuItem2 = new QAction(MainWindow);
        actionMenuItem2->setObjectName(QString::fromUtf8("actionMenuItem2"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));

        quickWidget = new QQuickWidget(centralWidget);
        quickWidget->setObjectName(QString::fromUtf8("quickWidget"));
        quickWidget->setBaseSize(QSize(0, 0));
        quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
        quickWidget->setSource(QUrl(QString::fromUtf8("qrc:/qml/MainPageView.qml")));

        MainWindow->setCentralWidget(centralWidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        action_MenuItem1->setText(QCoreApplication::translate("MainWindow", "MenuItem1", nullptr));
        actionMenuItem2->setText(QCoreApplication::translate("MainWindow", "MenuItem2", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
