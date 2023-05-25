import sys

from BlurWindow.blurWindow import blur
from PySide6.QtCore import Qt
from PySide6.QtWidgets import *


class MyWindow(QWidget):
    def __init__(self):
        super().__init__()
        self.setupUI()

    def setupUI(self):
        self.setGeometry(800, 200, 300, 100)
        self.setWindowFlags(Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WA_TranslucentBackground)
        blur(self.winId())
        self.setStyleSheet("background-color: rgba(0, 0, 0, 0)")

        self.label1 = QLabel("ID: ")
        self.label1.setStyleSheet("color: rgba(255,255,255, 0.9);") #rgba 의 4번째 파라미터는 opacity 인듯
        self.label2 = QLabel("Password: ")
        self.label2.setStyleSheet("color: rgba(255,255,255, 0.9);") #rgba 의 4번째 파라미터는 opacity 인듯
        self.lineEdit1 = QLineEdit()
        self.lineEdit1.setStyleSheet("color: rgba(255,255,255, 0.9);")
        self.lineEdit2 = QLineEdit()
        self.lineEdit2.setStyleSheet("color: rgba(255,255,255, 0.9);")

        self.pushButton1= QPushButton("Sign In")
        self.pushButton1.setStyleSheet("color: rgba(255,255,255, 0.9);")

        layout_l = QGridLayout()
        layout_l.addWidget(self.label1, 0, 0)
        layout_l.addWidget(self.lineEdit1, 0, 1)
        layout_l.addWidget(self.label2, 1, 0)
        layout_l.addWidget(self.lineEdit2, 1, 1)

        layout_r = QGridLayout()
        layout_r.addWidget(self.pushButton1, 0, 2)

        layout_main = QGridLayout()
        layout_main.addLayout(layout_l,0,0)
        layout_main.addLayout(layout_r,0,1)
        self.setLayout(layout_main)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    mywindow = MyWindow()
    mywindow.show()
    app.exec()