 echo '<?xml version="1.0" encoding="utf-8"?>' >> menu.xml
 echo '<openbox_menu xmlns="http://openbox.org/"' >> menu.xml
 echo 'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' >> menu.xml
 echo 'xsi:schemaLocation="http://openbox.org/">' >> menu.xml
 echo '<menu id="root-menu" label="obmenu-generator" execute="/usr/local/bin/obmenu-generator -i" />' >> menu.xml
 echo '</openbox_menu>' >> menu.xml
