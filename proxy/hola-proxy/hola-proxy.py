#!/usr/local/bin/python3
# -*- coding: utf-8 -*-

import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk
import os
import getpass
import subprocess
start_docker = "/usr/local/bin/hola-proxy &"
stop_docker =  "killall -9 hola-proxy "



class AnotherWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="GCT")
        self.set_default_size(200, 100)
        self.connect("destroy", lambda x: Gtk.main_quit())
        label = Gtk.Label()
        label.set_alignment(0, 0)
        self.add(label)
        self.show_all()
        sub_proc =  subprocess.check_output(['pgrep','hola-proxy'], universal_newlines=True)
        sub_outp = ""
        label.set_text(label.get_text() + sub_proc)
        print (sub_proc)
        self.add(Gtk.Label("This is another window"))
        self.show_all()






class bl_exit:
   
  
  

    def suspend_action(self,btn):

        self.status.set_label("Suspending, please standby...")

        os.system(start_docker.format("Suspend"))
        


    def reboot_action(self,btn):

        self.status.set_label("Rebooting, please standby...")
        os.system(stop_docker.format("Reboot"))
        


    def open_window(self, win):
        subw = AnotherWindow()
    
    def create_window(self):
        self.window = Gtk.Window()
        title = "Hola Proxy"
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
        self.suspend = Gtk.Button("Start Hola Proxy")
        self.suspend.set_border_width(4)
        self.suspend.connect("clicked", self.suspend_action)
        self.button_box.pack_start(self.suspend,True, True, 0)
        self.suspend.show()
         

        #stop vpn  button
        self.reboot = Gtk.Button("Stop Hola Proxy")
        self.reboot.set_border_width(4)
        self.reboot.connect("clicked", self.reboot_action)
        self.button_box.pack_start(self.reboot,True, True, 0)
        self.reboot.show()


        #stop vpn  button
        self.status = Gtk.Button("Status Hola Proxy")
        self.status.set_border_width(4)
        self.status.connect("clicked", self.open_window)
        self.button_box.pack_start(self.status,True, True, 0)
        self.status.show()

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
