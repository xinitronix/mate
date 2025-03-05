#!/bin/sh

 file="/boot/defaults/loader.conf"

if [ -f "$file" ] ; then
     rm $file
fi

echo '# This is loader.conf - a file full of useful variables that you can' >> /boot/defaults/loader.conf
 echo '# set to change the default load behavior of your system. You should' >> /boot/defaults/loader.conf
 echo '# not edit this file! Put any overrides into one of the' >> /boot/defaults/loader.conf
 echo '# loader_conf_files instead and you will be able to update these' >> /boot/defaults/loader.conf
 echo '# defaults later without spamming your local configuration information.' >> /boot/defaults/loader.conf
 echo '#' >> /boot/defaults/loader.conf
 echo '# All arguments must be in double quotes.' >> /boot/defaults/loader.conf
 echo '#' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Basic configuration options ############################' >> /boot/defaults/loader.conf
 echo 'exec="echo Loading /boot/defaults/loader.conf"' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo 'kernel="kernel" # /boot sub-directory containing kernel and modules' >> /boot/defaults/loader.conf
 echo 'bootfile="kernel" # Kernel name (possibly absolute path)' >> /boot/defaults/loader.conf
 echo 'kernel_options="" # Flags to be passed to the kernel' >> /boot/defaults/loader.conf
 echo 'loader_conf_files="/boot/device.hints /boot/loader.conf"' >> /boot/defaults/loader.conf
 echo 'loader_conf_dirs="/boot/loader.conf.d"' >> /boot/defaults/loader.conf
 echo 'local_loader_conf_files="/boot/loader.conf.local"' >> /boot/defaults/loader.conf
 echo 'nextboot_conf="/boot/nextboot.conf"' >> /boot/defaults/loader.conf
 echo 'verbose_loading="NO" # Set to YES for verbose loader output' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Splash screen configuration ############################' >> /boot/defaults/loader.conf
 echo 'splash_bmp_load="NO" # Set this to YES for bmp splash screen!' >> /boot/defaults/loader.conf
 echo 'splash_pcx_load="NO" # Set this to YES for pcx splash screen!' >> /boot/defaults/loader.conf
 echo 'splash_txt_load="NO" # Set this to YES for TheDraw splash screen!' >> /boot/defaults/loader.conf
 echo 'vesa_load="NO" # Set this to YES to load the vesa module' >> /boot/defaults/loader.conf
 echo 'bitmap_load="NO" # Set this to YES if you want splash screen!' >> /boot/defaults/loader.conf
 echo 'bitmap_name="splash.bmp" # Set this to the name of the file' >> /boot/defaults/loader.conf
 echo 'bitmap_type="splash_image_data" # and place it on the module_path' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Screen saver modules ###################################' >> /boot/defaults/loader.conf
 echo '# This is best done in rc.conf' >> /boot/defaults/loader.conf
 echo 'screensave_load="NO" # Set to YES to load a screensaver module' >> /boot/defaults/loader.conf
 echo 'screensave_name="green_saver" # Set to the name of the screensaver module' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Early hostid configuration ############################' >> /boot/defaults/loader.conf
 echo 'hostuuid_load="YES"' >> /boot/defaults/loader.conf
 echo 'hostuuid_name="/etc/hostid"' >> /boot/defaults/loader.conf
 echo 'hostuuid_type="hostuuid"' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Random number generator configuration ##################' >> /boot/defaults/loader.conf
 echo '# See rc.conf(5). The entropy_boot_file config variable must agree with the' >> /boot/defaults/loader.conf
 echo '# settings below.' >> /boot/defaults/loader.conf
 echo 'entropy_cache_load="YES" # Set this to NO to disable loading' >> /boot/defaults/loader.conf
 echo '# cached entropy at boot time' >> /boot/defaults/loader.conf
 echo 'entropy_cache_name="/boot/entropy" # Set this to the name of the file' >> /boot/defaults/loader.conf
 echo 'entropy_cache_type="boot_entropy_cache" # Required for the kernel to find' >> /boot/defaults/loader.conf
 echo '# the boot-time entropy cache. This' >> /boot/defaults/loader.conf
 echo '# must not change value even if the' >> /boot/defaults/loader.conf
 echo '# _name above does change!' >> /boot/defaults/loader.conf
 echo 'entropy_efi_seed="YES" # Set this to NO to disable loading' >> /boot/defaults/loader.conf
 echo '# entropy from the UEFI hardware' >> /boot/defaults/loader.conf
 echo '# random number generator API' >> /boot/defaults/loader.conf
 echo 'entropy_efi_seed_size="2048" # Set this to a different value to' >> /boot/defaults/loader.conf
 echo '# change the amount of entropy' >> /boot/defaults/loader.conf
 echo '# requested from EFI' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### RAM Blacklist configuration ############################' >> /boot/defaults/loader.conf
 echo 'ram_blacklist_load="NO" # Set this to YES to load a file' >> /boot/defaults/loader.conf
 echo '# containing a list of addresses to' >> /boot/defaults/loader.conf
 echo '# exclude from the running system.' >> /boot/defaults/loader.conf
 echo 'ram_blacklist_name="/boot/blacklist.txt" # Set this to the name of the file' >> /boot/defaults/loader.conf
 echo 'ram_blacklist_type="ram_blacklist" # Required for the kernel to find' >> /boot/defaults/loader.conf
 echo '# the blacklist module' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Microcode loading configuration ########################' >> /boot/defaults/loader.conf
 echo 'cpu_microcode_load="NO" # Set this to YES to load and apply a' >> /boot/defaults/loader.conf
 echo '# microcode update file during boot.' >> /boot/defaults/loader.conf
 echo 'cpu_microcode_name="/boot/firmware/ucode.bin" # Set this to the microcode' >> /boot/defaults/loader.conf
 echo '# update file path.' >> /boot/defaults/loader.conf
 echo 'cpu_microcode_type="cpu_microcode" # Required for the kernel to find' >> /boot/defaults/loader.conf
 echo '# the microcode update file.' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### ACPI settings ##########################################' >> /boot/defaults/loader.conf
 echo 'acpi_dsdt_load="NO" # DSDT Overriding' >> /boot/defaults/loader.conf
 echo 'acpi_dsdt_type="acpi_dsdt" # Don't change this' >> /boot/defaults/loader.conf
 echo 'acpi_dsdt_name="/boot/acpi_dsdt.aml"' >> /boot/defaults/loader.conf
 echo '# Override DSDT in BIOS by this file' >> /boot/defaults/loader.conf
 echo 'acpi_video_load="NO" # Load the ACPI video extension driver' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Audit settings #########################################' >> /boot/defaults/loader.conf
 echo 'audit_event_load="NO" # Preload audit_event config' >> /boot/defaults/loader.conf
 echo 'audit_event_name="/etc/security/audit_event"' >> /boot/defaults/loader.conf
 echo 'audit_event_type="etc_security_audit_event"' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Initial memory disk settings ###########################' >> /boot/defaults/loader.conf
 echo '#mdroot_load="YES" # The "mdroot" prefix is arbitrary.' >> /boot/defaults/loader.conf
 echo '#mdroot_type="md_image" # Create md(4) disk at boot.' >> /boot/defaults/loader.conf
 echo '#mdroot_name="/boot/root.img" # Path to a file containing the image.' >> /boot/defaults/loader.conf
 echo '#rootdev="ufs:/dev/md0" # Set the root filesystem to md(4) device.' >> /boot/defaults/loader.conf
 echo '' >> /boot/defaults/loader.conf
 echo '### Loader settings ########################################' >> /boot/defaults/loader.conf
 echo '#loader_delay="3" # Delay in seconds before loading anything.' >> /boot/defaults/loader.conf
 echo '# Default is unset and disabled (no delay).' >> /boot/defaults/loader.conf
 echo '#autoboot_delay="10" # Delay in seconds before autobooting,' >> /boot/defaults/loader.conf
 echo '# -1 for no user interrupts, NO to disable' >> /boot/defaults/loader.conf
 echo '#password="" # Prevent changes to boot options' >> /boot/defaults/loader.conf
 echo '#bootlock_password="" # Prevent booting (see check-password.4th(8))' >> /boot/defaults/loader.conf
 echo '#geom_eli_passphrase_prompt="NO" # Prompt for geli(8) passphrase to mount root' >> /boot/defaults/loader.conf
 echo 'bootenv_autolist="YES" # Auto populate the list of ZFS Boot Environments' >> /boot/defaults/loader.conf
 echo '#beastie_disable="NO" # Turn the beastie boot menu on and off' >> /boot/defaults/loader.conf
 echo 'efi_max_resolution="1x1" # Set the max resolution for EFI loader to use:' >> /boot/defaults/loader.conf
 echo '# 480p, 720p, 1080p, 1440p, 2160p/4k, 5k, or' >> /boot/defaults/loader.conf
 echo '# WidthxHeight (e.g. 1920x1080)' >> /boot/defaults/loader.conf
 echo '#kernels="kernel kernel.old" # Kernels to display in the boot menu' >> /boot/defaults/loader.conf
 echo 'kernels_autodetect="YES" # Auto-detect kernel directories in /boot' >> /boot/defaults/loader.conf
 echo '#loader_logo="orbbw" # Desired logo: orbbw, orb, fbsdbw, beastiebw, beastie, none' >> /boot/defaults/loader.conf
 echo '#comconsole_speed="115200" # Set the current serial console speed' >> /boot/defaults/loader.conf
 echo '#console="vidconsole" # A comma separated list of console(s)' >> /boot/defaults/loader.conf
 echo '#currdev="disk1s1a" # Set the current device' >> /boot/defaults/loader.conf
 echo 'module_path="/boot/modules;/boot/dtb;/boot/dtb/overlays" # Set the module search path' >> /boot/defaults/loader.conf
 echo 'module_blacklist="drm drm2 radeonkms i915kms amdgpu" # Loader module blacklist' >> /boot/defaults/loader.conf
#                    echo  'nvidia_load="YES" '            >>                   /boot/defaults/loader.conf
                     echo  'vboxdrv_load="YES"'            >>                   /boot/defaults/loader.conf
                     echo  'coretemp_load="YES" '          >>                   /boot/defaults/loader.conf
                     echo  'cpufreq_load="yes"'            >>                   /boot/defaults/loader.conf
                     echo  'vfs.zfs.prefetch_disable="0"'  >>                   /boot/defaults/loader.conf
                     echo  'machdep.disable_mtrrs=1'       >>                   /boot/defaults/loader.conf
                     echo  'kern.vty=vt'                   >>                   /boot/defaults/loader.conf
                     echo  'hw.nvidiadrm.modeset=1'        >>                   /boot/defaults/loader.conf
                     echo  'if_urtwn_load="YES"'           >>                   /boot/defaults/loader.conf
                     echo  'legal.realtek.license_ack=1'   >>                   /boot/defaults/loader.conf
#                    echo  'nvidia-modeset_load="YES"'     >>                   /boot/defaults/loader.conf
                     echo  'fusefs_load="YES"'             >>                   /boot/defaults/loader.conf
#                    echo  'vmm_load="YES"'                >>                   /boot/defaults/loader.conf
                     echo  'hw.usb.no_boot_wait=1'         >>                   /boot/defaults/loader.conf
#                    echo  'hw.usb.usbhid.enable="1"'      >>                   /boot/defaults/loader.conf