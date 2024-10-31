#!/usr/local/bin/python3
# -*- coding: utf-8 -*-

import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk
import os
import getpass

start_docker = ""
stop_docker = " "

class bl_exit:
   
  
  

    def suspend_action(self,btn):

        self.status.set_label("Suspending, please standby...")

        os.system(start_docker.format("Suspend"))
        Gtk.main_quit()


    def reboot_action(self,btn):

        self.status.set_label("Rebooting, please standby...")
        os.system(stop_docker.format("Reboot"))
        win = Gtk.Window()
        win.connect("destroy", Gtk.main_quit)
        win.show_all()
        Gtk.main_quit()



    def create_window(self):
        self.window = Gtk.Window()
        title = "DockerBox"
        self.window.set_title(title)
        self.window.set_border_width(5)
        self.window.set_size_request(500, 80)
        self.window.set_resizable(False)
        self.window.set_keep_above(True)
        self.window.stick
        self.window.set_position(1)
        self.window.connect("delete_event", Gtk.main_quit)
        windowicon = self.window.render_icon(Gtk.STOCK_QUIT, Gtk.IconSize.MENU)
        self.window.set_icon(windowicon)

        #Create HBox for buttons
        self.button_box = Gtk.HBox()
        self.button_box.show()


        #start vpn  button
        self.suspend = Gtk.Button("Start DockerBox")
        self.suspend.set_border_width(4)
        self.suspend.connect("clicked", self.suspend_action)
        self.button_box.pack_start(self.suspend,True, True, 0)
        self.suspend.show()
         

        #stop vpn  button
        self.reboot = Gtk.Button("Stop DockerBox")
        self.reboot.set_border_width(4)
        self.reboot.connect("clicked", self.reboot_action)
        self.button_box.pack_start(self.reboot,True, True, 0)
        self.reboot.show()


        #Create HBox for status label
        self.label_box = Gtk.HBox()
        self.label_box.show()
        self.status = Gtk.Label()
        self.status.show()
        self.label_box.pack_start(self.status,True, True, 0)

        #Create VBox and pack the above HBox's
        self.vbox = Gtk.VBox()
        self.vbox.pack_start(self.button_box,True, True, 0)
        self.vbox.pack_start(self.label_box,True, True, 0)
        self.vbox.show()

        self.window.add(self.vbox)
        self.window.show()

    def __init__(self):
        self.create_window()


def main():
    Gtk.main()

if __name__ == "__main__":
    go = bl_exit()
    main()
