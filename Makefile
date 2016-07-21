ie8: VMs/IE8\ -\ Win7.ova

ie9: VMs/IE9\ -\ Win7.ova

ie10: VMs/IE10\ -\ Win7.ova

ie11: E11\ -\ Win7.ova

VMs/IE11\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Windows/IE11.Win7.For.Windows.VirtualBox.zip"
	chmod +x IE11.Win7.For.Windows.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE11.Win7.For.Windows.VirtualBox.zip


VMs/IE10\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE10/Windows/IE10.Win7.For.Windows.VirtualBox.zip"
	chmod +x IE10.Win7.For.Windows.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE10.Win7.For.Windows.VirtualBox.zip

VMs/IE9\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE9/Windows/IE9.Win7.For.Windows.VirtualBox.zip"
	chmod +x IE9.Win7.For.Windows.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE9.Win7.For.Windows.VirtualBox.zip

VMs/IE8\ -\ Win7.ova:
	mv "$(@F)" VMs
