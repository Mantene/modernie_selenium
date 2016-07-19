all: fetch fetch_vms

fetch: Tools/selenium_conf/selenium-server-standalone.jar Tools/deuac.iso Tools/selenium_conf/IEDriverServer.exe Tools/selenium_conf/chromedrive.exe Tools/jre-windows-i586.exe Tools/firefox.exe Tools/chrome.exe

fetch_vms: VMs/IE11\ -\ Win7.ova VMs/IE8\ -\ Win7.ova VMs/IE10\ -\ Win7.ova VMs/IE9\ -\ Win7.ova

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
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE8/Windows/IE8.Win7.For.Windows.VirtualBox.zip"
	unzip IE8.Win7.For.Windows.VirtualBox.zip
	mkdir ~/VMs || true
	mv "$(@F)" VMs
	rm IE8.Win7.For.Windows.VirtualBox.zip

Tools/selenium_conf/selenium-server-standalone.jar:
	curl -o Tools/selenium_conf/selenium-server-standalone.jar -L http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar

Tools/deuac.iso:
	curl -o Tools/deuac.iso -L https://github.com/tka/SeleniumBox/blob/master/deuac.iso?raw=true

Tools/selenium_conf/IEDriverServer.exe:
	curl -o Tools/selenium_conf/IEDriverServer.zip -L http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_Win32_2.44.0.zip
	#curl -o Tools/selenium_conf/IEDriverServer.zip -L http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_x64_2.44.0.zip
	cd Tools/selenium_conf && unzip IEDriverServer.zip

Tools/selenium_conf/chromedrive.exe:
	curl -o Tools/selenium_conf/chromedriver.zip -L http://chromedriver.storage.googleapis.com/2.15/chromedriver_win32.zip
	cd Tools/selenium_conf && unzip chromedriver.zip

Tools/jre-windows-i586.exe:
	curl -j -o Tools/jre-windows-i586.exe -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jre-7u75-windows-i586.exe

Tools/firefox.exe:
	curl -o $@ -L "https://download.mozilla.org/?product=firefox-34.0.5-SSL&os=win&lang=en-GB"

Tools/chrome.exe:
	curl -o $@ -L "https://dl.google.com/update2/installers/ChromeStandaloneSetup.exe"
