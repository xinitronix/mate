#!/bin/sh

rm rc.xml

 echo '<?xml version="1.0" encoding="UTF-8"?>' >> rc.xml
 echo '<!-- Do not edit this file, it will be overwritten on install.' >> rc.xml
 echo 'Copy the file to $HOME/.config/openbox/ instead. -->' >> rc.xml
 echo '<openbox_config xmlns="http://openbox.org/3.4/rc">' >> rc.xml
 echo '<resistance>' >> rc.xml
 echo '<strength>10</strength>' >> rc.xml
 echo '<screen_edge_strength>20</screen_edge_strength>' >> rc.xml
 echo '</resistance>' >> rc.xml
 echo '<focus>' >> rc.xml
 echo '<focusNew>yes</focusNew>' >> rc.xml
 echo '<!-- always try to focus new windows when they appear. other rules do' >> rc.xml
 echo 'apply -->' >> rc.xml
 echo '<followMouse>no</followMouse>' >> rc.xml
 echo '<!-- move focus to a window when you move the mouse into it -->' >> rc.xml
 echo '<focusLast>yes</focusLast>' >> rc.xml
 echo '<!-- focus the last used window when changing desktops, instead of the one' >> rc.xml
 echo 'under the mouse pointer. when followMouse is enabled -->' >> rc.xml
 echo '<underMouse>no</underMouse>' >> rc.xml
 echo '<!-- move focus under the mouse, even when the mouse is not moving -->' >> rc.xml
 echo '<focusDelay>200</focusDelay>' >> rc.xml
 echo '<!-- when followMouse is enabled, the mouse must be inside the window for' >> rc.xml
 echo 'this many milliseconds (1000 = 1 sec) before moving focus to it -->' >> rc.xml
 echo '<raiseOnFocus>no</raiseOnFocus>' >> rc.xml
 echo '<!-- when followMouse is enabled, and a window is given focus by moving the' >> rc.xml
 echo 'mouse into it, also raise the window -->' >> rc.xml
 echo '</focus>' >> rc.xml
 echo '<placement>' >> rc.xml
 echo '<policy>Smart</policy>' >> rc.xml
 echo '<!-- 'Smart' or 'UnderMouse' -->' >> rc.xml
 echo '<center>yes</center>' >> rc.xml
 echo '<!-- whether to place windows in the center of the free area found or' >> rc.xml
 echo 'the top left corner -->' >> rc.xml
 echo '<monitor>Active</monitor>' >> rc.xml
 echo '<!-- with Smart placement on a multi-monitor system, try to place new windows' >> rc.xml
 echo 'on: 'Any' - any monitor, 'Mouse' - where the mouse is, 'Active' - where' >> rc.xml
 echo 'the active window is -->' >> rc.xml
 echo '<primaryMonitor>1</primaryMonitor>' >> rc.xml
 echo '<!-- The monitor where Openbox should place popup dialogs such as the' >> rc.xml
 echo 'focus cycling popup, or the desktop switch popup. It can be an index' >> rc.xml
 echo 'from 1, specifying a particular monitor. Or it can be one of the' >> rc.xml
 echo 'following: 'Mouse' - where the mouse is, or' >> rc.xml
 echo ''Active' - where the active window is -->' >> rc.xml
 echo '</placement>' >> rc.xml
 echo '<theme>' >> rc.xml
 echo '<name>Syscrash</name>' >> rc.xml
 echo '<titleLayout>NLIMC</titleLayout>' >> rc.xml
 echo '<!--' >> rc.xml
 echo 'available characters are NDSLIMC, each can occur at most once.' >> rc.xml
 echo 'N: window icon' >> rc.xml
 echo 'L: window label (AKA title).' >> rc.xml
 echo 'I: iconify' >> rc.xml
 echo 'M: maximize' >> rc.xml
 echo 'C: close' >> rc.xml
 echo 'S: shade (roll up/down)' >> rc.xml
 echo 'D: omnipresent (on all desktops).' >> rc.xml
 echo '-->' >> rc.xml
 echo '<keepBorder>yes</keepBorder>' >> rc.xml
 echo '<animateIconify>yes</animateIconify>' >> rc.xml
 echo '<font place="ActiveWindow">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<!-- font size in points -->' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<!-- 'bold' or 'normal' -->' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '<!-- 'italic' or 'normal' -->' >> rc.xml
 echo '</font>' >> rc.xml
 echo '<font place="InactiveWindow">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<!-- font size in points -->' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<!-- 'bold' or 'normal' -->' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '<!-- 'italic' or 'normal' -->' >> rc.xml
 echo '</font>' >> rc.xml
 echo '<font place="MenuHeader">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<!-- font size in points -->' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<!-- 'bold' or 'normal' -->' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '<!-- 'italic' or 'normal' -->' >> rc.xml
 echo '</font>' >> rc.xml
 echo '<font place="MenuItem">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<!-- font size in points -->' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<!-- 'bold' or 'normal' -->' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '<!-- 'italic' or 'normal' -->' >> rc.xml
 echo '</font>' >> rc.xml
 echo '<font place="ActiveOnScreenDisplay">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '</font>' >> rc.xml
 echo '<font place="InactiveOnScreenDisplay">' >> rc.xml
 echo '<name>Liberation Sans</name>' >> rc.xml
 echo '<size>10</size>' >> rc.xml
 echo '<weight>Normal</weight>' >> rc.xml
 echo '<slant>Normal</slant>' >> rc.xml
 echo '</font>' >> rc.xml
 echo '</theme>' >> rc.xml
 echo '<desktops>' >> rc.xml
 echo '<!-- this stuff is only used at startup, pagers allow you to change them' >> rc.xml
 echo 'during a session' >> rc.xml
 echo '' >> rc.xml
 echo 'these are default values to use when other ones are not already set' >> rc.xml
 echo 'by other applications, or saved in your session' >> rc.xml
 echo '' >> rc.xml
 echo 'use obconf if you want to change these without having to log out' >> rc.xml
 echo 'and back in -->' >> rc.xml
 echo '<number>4</number>' >> rc.xml
 echo '<firstdesk>1</firstdesk>' >> rc.xml
 echo '<names>' >> rc.xml
 echo '<!-- set names up here if you want to, like this:' >> rc.xml
 echo '<name>desktop 1</name>' >> rc.xml
 echo '<name>desktop 2</name>' >> rc.xml
 echo '-->' >> rc.xml
 echo '</names>' >> rc.xml
 echo '<popupTime>875</popupTime>' >> rc.xml
 echo '<!-- The number of milliseconds to show the popup for when switching' >> rc.xml
 echo 'desktops. Set this to 0 to disable the popup. -->' >> rc.xml
 echo '</desktops>' >> rc.xml
 echo '<resize>' >> rc.xml
 echo '<drawContents>yes</drawContents>' >> rc.xml
 echo '<popupShow>Nonpixel</popupShow>' >> rc.xml
 echo '<!-- 'Always', 'Never', or 'Nonpixel' (xterms and such) -->' >> rc.xml
 echo '<popupPosition>Center</popupPosition>' >> rc.xml
 echo '<!-- 'Center', 'Top', or 'Fixed' -->' >> rc.xml
 echo '<popupFixedPosition>' >> rc.xml
 echo '<!-- these are used if popupPosition is set to 'Fixed' -->' >> rc.xml
 echo '<x>10</x>' >> rc.xml
 echo '<!-- positive number for distance from left edge, negative number for' >> rc.xml
 echo 'distance from right edge, or 'Center' -->' >> rc.xml
 echo '<y>10</y>' >> rc.xml
 echo '<!-- positive number for distance from top edge, negative number for' >> rc.xml
 echo 'distance from bottom edge, or 'Center' -->' >> rc.xml
 echo '</popupFixedPosition>' >> rc.xml
 echo '</resize>' >> rc.xml
 echo '<!-- You can reserve a portion of your screen where windows will not cover when' >> rc.xml
 echo 'they are maximized, or when they are initially placed.' >> rc.xml
 echo 'Many programs reserve space automatically, but you can use this in other' >> rc.xml
 echo 'cases. -->' >> rc.xml
 echo '<margins>' >> rc.xml
 echo '<top>14</top>' >> rc.xml
 echo '<bottom>0</bottom>' >> rc.xml
 echo '<left>0</left>' >> rc.xml
 echo '<right>0</right>' >> rc.xml
 echo '</margins>' >> rc.xml
 echo '<dock>' >> rc.xml
 echo '<position>TopLeft</position>' >> rc.xml
 echo '<!-- (Top|Bottom)(Left|Right|)|Top|Bottom|Left|Right|Floating -->' >> rc.xml
 echo '<floatingX>0</floatingX>' >> rc.xml
 echo '<floatingY>0</floatingY>' >> rc.xml
 echo '<noStrut>no</noStrut>' >> rc.xml
 echo '<stacking>Above</stacking>' >> rc.xml
 echo '<!-- 'Above', 'Normal', or 'Below' -->' >> rc.xml
 echo '<direction>Vertical</direction>' >> rc.xml
 echo '<!-- 'Vertical' or 'Horizontal' -->' >> rc.xml
 echo '<autoHide>no</autoHide>' >> rc.xml
 echo '<hideDelay>300</hideDelay>' >> rc.xml
 echo '<!-- in milliseconds (1000 = 1 second) -->' >> rc.xml
 echo '<showDelay>300</showDelay>' >> rc.xml
 echo '<!-- in milliseconds (1000 = 1 second) -->' >> rc.xml
 echo '<moveButton>Middle</moveButton>' >> rc.xml
 echo '<!-- 'Left', 'Middle', 'Right' -->' >> rc.xml
 echo '</dock>' >> rc.xml
 echo '<keyboard>' >> rc.xml
 echo '<chainQuitKey>C-g</chainQuitKey>' >> rc.xml
 echo '<!-- Keybindings for desktop switching -->' >> rc.xml
 echo '<keybind key="C-A-Left">' >> rc.xml
 echo '<action name="DesktopLeft">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-Right">' >> rc.xml
 echo '<action name="DesktopRight">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-t">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/tint2-on-off</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-w">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/weather-on-off.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-x">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/togglescreen.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-d">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/dzen2-on-off</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-n">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/conkynote.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-b">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>/usr/local/bin/cpic</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-v">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>~/.scripts/vnc_win.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-l">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>doas ~/.scripts/orglinux.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-u">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<command>doas ~/.scripts/mount.sh</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-Down">' >> rc.xml
 echo '<action name="DesktopDown">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="S-A-Left">' >> rc.xml
 echo '<action name="SendToDesktopLeft">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="S-A-Right">' >> rc.xml
 echo '<action name="SendToDesktopRight">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="S-A-Up">' >> rc.xml
 echo '<action name="SendToDesktopUp">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="S-A-Down">' >> rc.xml
 echo '<action name="SendToDesktopDown">' >> rc.xml
 echo '<dialog>no</dialog>' >> rc.xml
 echo '<wrap>no</wrap>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-F1">' >> rc.xml
 echo '<action name="Desktop">' >> rc.xml
 echo '<desktop>1</desktop>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-F2">' >> rc.xml
 echo '<action name="Desktop">' >> rc.xml
 echo '<desktop>2</desktop>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-F3">' >> rc.xml
 echo '<action name="Desktop">' >> rc.xml
 echo '<desktop>3</desktop>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="W-F4">' >> rc.xml
 echo '<action name="Desktop">' >> rc.xml
 echo '<desktop>4</desktop>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="">' >> rc.xml
 echo '<action name="ToggleShowDesktop"/>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<!-- Keybindings for windows -->' >> rc.xml
 echo '<keybind key="A-F4">' >> rc.xml
 echo '<action name="Close"/>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="A-Escape">' >> rc.xml
 echo '<action name="Lower"/>' >> rc.xml
 echo '<action name="FocusToBottom"/>' >> rc.xml
 echo '<action name="Unfocus"/>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="A-space">' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="Print">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<execute>gnome-screenshot</execute>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="A-Print">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<execute>gnome-screenshot -w</execute>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<!-- Keybindings for window switching -->' >> rc.xml
 echo '<keybind key="A-Tab">' >> rc.xml
 echo '<action name="NextWindow"/>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="A-S-Tab">' >> rc.xml
 echo '<action name="PreviousWindow"/>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<keybind key="C-A-Tab">' >> rc.xml
 echo '<action name="NextWindow">' >> rc.xml
 echo '<panels>yes</panels>' >> rc.xml
 echo '<desktop>yes</desktop>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '<!-- Keybindings for running applications -->' >> rc.xml
 echo '<keybind key="W-e">' >> rc.xml
 echo '<action name="Execute">' >> rc.xml
 echo '<startupnotify>' >> rc.xml
 echo '<enabled>true</enabled>' >> rc.xml
 echo '<name>Konqueror</name>' >> rc.xml
 echo '</startupnotify>' >> rc.xml
 echo '<command>kfmclient openProfile filemanagement</command>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</keybind>' >> rc.xml
 echo '</keyboard>' >> rc.xml
 echo '<mouse>' >> rc.xml
 echo '<dragThreshold>8</dragThreshold>' >> rc.xml
 echo '<!-- number of pixels the mouse must move before a drag begins -->' >> rc.xml
 echo '<doubleClickTime>200</doubleClickTime>' >> rc.xml
 echo '<!-- in milliseconds (1000 = 1 second) -->' >> rc.xml
 echo '<screenEdgeWarpTime>400</screenEdgeWarpTime>' >> rc.xml
 echo '<!-- Time before changing desktops when the pointer touches the edge of the' >> rc.xml
 echo 'screen while moving a window, in milliseconds (1000 = 1 second).' >> rc.xml
 echo 'Set this to 0 to disable warping -->' >> rc.xml
 echo '<context name="Frame">' >> rc.xml
 echo '<mousebind button="A-Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Left" action="Click">' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Left" action="Drag">' >> rc.xml
 echo '<action name="Move"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Right" action="Drag">' >> rc.xml
 echo '<action name="Resize"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Middle" action="Press">' >> rc.xml
 echo '<action name="Lower"/>' >> rc.xml
 echo '<action name="FocusToBottom"/>' >> rc.xml
 echo '<action name="Unfocus"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="C-A-Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="C-A-Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-S-Up" action="Click">' >> rc.xml
 echo '<action name="SendToDesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-S-Down" action="Click">' >> rc.xml
 echo '<action name="SendToDesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Titlebar">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Move"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="DoubleClick">' >> rc.xml
 echo '<action name="ToggleMaximizeFull"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Middle" action="Press">' >> rc.xml
 echo '<action name="Lower"/>' >> rc.xml
 echo '<action name="FocusToBottom"/>' >> rc.xml
 echo '<action name="Unfocus"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Up" action="Click">' >> rc.xml
 echo '<action name="Shade"/>' >> rc.xml
 echo '<action name="FocusToBottom"/>' >> rc.xml
 echo '<action name="Unfocus"/>' >> rc.xml
 echo '<action name="Lower"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Down" action="Click">' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Top">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize">' >> rc.xml
 echo '<edge>top</edge>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Left">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize">' >> rc.xml
 echo '<edge>left</edge>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Right">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize">' >> rc.xml
 echo '<edge>right</edge>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Bottom">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize">' >> rc.xml
 echo '<edge>bottom</edge>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Middle" action="Press">' >> rc.xml
 echo '<action name="Lower"/>' >> rc.xml
 echo '<action name="FocusToBottom"/>' >> rc.xml
 echo '<action name="Unfocus"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="BLCorner">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="BRCorner">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="TLCorner">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="TRCorner">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Drag">' >> rc.xml
 echo '<action name="Resize"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Client">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Middle" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Icon">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="AllDesktops">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Click">' >> rc.xml
 echo '<action name="ToggleOmnipresent"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Shade">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Click">' >> rc.xml
 echo '<action name="ToggleShade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Iconify">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Click">' >> rc.xml
 echo '<action name="Iconify"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Maximize">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Middle" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Click">' >> rc.xml
 echo '<action name="ToggleMaximizeFull"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Middle" action="Click">' >> rc.xml
 echo '<action name="ToggleMaximizeVert"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Click">' >> rc.xml
 echo '<action name="ToggleMaximizeHorz"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Close">' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '<action name="Unshade"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Click">' >> rc.xml
 echo '<action name="Close"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Desktop">' >> rc.xml
 echo '<mousebind button="Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="C-A-Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="C-A-Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Left" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="Focus"/>' >> rc.xml
 echo '<action name="Raise"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="Root">' >> rc.xml
 echo '<!-- Menus -->' >> rc.xml
 echo '<mousebind button="Middle" action="Press">' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>client-list-combined-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Right" action="Press">' >> rc.xml
 echo '<action name="ShowMenu">' >> rc.xml
 echo '<menu>root-menu</menu>' >> rc.xml
 echo '</action>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '<context name="MoveResize">' >> rc.xml
 echo '<mousebind button="Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Up" action="Click">' >> rc.xml
 echo '<action name="DesktopPrevious"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '<mousebind button="A-Down" action="Click">' >> rc.xml
 echo '<action name="DesktopNext"/>' >> rc.xml
 echo '</mousebind>' >> rc.xml
 echo '</context>' >> rc.xml
 echo '</mouse>' >> rc.xml
 echo '<menu><!-- You can specify more than one menu file in here and they are all loaded,' >> rc.xml
 echo 'just don't make menu ids clash or, well, it'll be kind of pointless --><!-- default menu file (or custom one in $HOME/.config/openbox/) --><!-- system menu files on Debian systems --><file>/var/lib/openbox/debian-menu.xml</file><file>debian-menu.xml</file><file>menu.xml</file><hideDelay>200</hideDelay><!-- if a press-release lasts longer than this setting (in milliseconds), the' >> rc.xml
 echo 'menu is hidden again --><middle>no</middle><!-- center submenus vertically about the parent entry --><submenuShowDelay>100</submenuShowDelay><!-- time to delay before showing a submenu after hovering over the parent' >> rc.xml
 echo 'entry.' >> rc.xml
 echo 'if this is a negative value, then the delay is infinite and the' >> rc.xml
 echo 'submenu will not be shown until it is clicked on --><submenuHideDelay>400</submenuHideDelay><!-- time to delay before hiding a submenu when selecting another' >> rc.xml
 echo 'entry in parent menu -->' >> rc.xml
 echo 'if this is a negative value, then the delay is infinite and the' >> rc.xml
 echo 'submenu will not be hidden until a different submenu is opened --&gt;' >> rc.xml
 echo '<applicationIcons>yes</applicationIcons>' >> rc.xml
 echo '<!-- controls if icons appear in the client-list-(combined-)menu -->' >> rc.xml
 echo '<manageDesktops>yes</manageDesktops>' >> rc.xml
 echo '<!-- show the manage desktops section in the client-list-(combined-)menu -->' >> rc.xml
 echo '</menu>' >> rc.xml
 echo '<applications>' >> rc.xml
 echo '<!--' >> rc.xml
echo "-->" >> rc.xml
  echo " </applications>" >> rc.xml
 echo "</openbox_config>" >>  rc.xml


