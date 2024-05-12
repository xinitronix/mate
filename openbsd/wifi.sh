#!/bin/sh

ifconfig urtwn0 up

ifconfig urtwn0 nwid inetcom4  wpakey  9175600380
         
dhclient urtwn0