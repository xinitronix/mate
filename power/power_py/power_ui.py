# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'untitled.ui'
#
# Created by: PyQt5 UI code generator 5.15.4
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(380, 77)
        self.poweroff = QtWidgets.QPushButton(Form)
        self.poweroff.setGeometry(QtCore.QRect(40, 30, 81, 21))
        self.poweroff.setObjectName("poweroff")
        self.reboot = QtWidgets.QPushButton(Form)
        self.reboot.setGeometry(QtCore.QRect(250, 30, 81, 21))
        self.reboot.setObjectName("reboot")

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "shutdown"))
        self.poweroff.setText(_translate("Form", "poweroff"))
        self.reboot.setText(_translate("Form", "reboot"))
