#!/usr/local/bin/python3
import sys, os
from PyQt5 import QtCore, QtGui, QtWidgets
from power_ui import Ui_Form

class Main(QtWidgets.QMainWindow):
    def __init__(self):
        super(Main, self).__init__()
        self.setFixedSize(400, 80)

        # устанавливаем иконку
        self.setWindowIcon(QtGui.QIcon('/home/definitly/.config/icons/shutdown.png')) 

        # build ui
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        # connect signals
        self.ui.reboot.clicked.connect(self.on_reboot)
        self.ui.poweroff.clicked.connect(self.on_poweroff)

        # центрируем окно
        self.center()

    def center(self):
        # получаем размеры экрана
        screen = QtWidgets.QDesktopWidget().screenGeometry()
        # получаем размеры окна
        size = self.geometry()
        # вычисляем координаты для центра
        x = (screen.width() - size.width()) // 2
        y = (screen.height() - size.height()) // 2
        # перемещаем окно
        self.move(x, y)

    def on_reboot(self):
        os.system("/shutdown -r now")

    def on_poweroff(self):
        os.system("/shutdown -p now")

if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    main = Main()
    main.show()
    sys.exit(app.exec_())
