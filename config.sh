# Config; See readme for details.
java_exe="jre-8u91-windows-i586.exe"
#firefox_exe="firefox.exe"
#chrome_exe="chrome.exe"
selenium_jar="selenium-server-standalone-2.53.0.jar"

if [ $(uname) == "Darwin" ]
then
  # This makes sense on a mac
  nic_bridge="en0"
else
  # This works on Ubuntu
  nic_bridge="eth0"
fi

vm_path="$(pwd)/VMs/"
vm_mem="768"
vm_vram="50"
vm_mem_xp="512"
deuac_iso="deuac.iso"
tools_path="$(pwd)/Tools/"
selenium_path="$(pwd)/Tools/selenium_conf/"
ie_cache_reg="ie_disablecache.reg"
ie_protectedmode_reg="ie_protectedmode.reg"
log_path=""
vbox_user="selenium"
mailto="asgeir.bjarnason@storystream.it"
create_snapshot=False
