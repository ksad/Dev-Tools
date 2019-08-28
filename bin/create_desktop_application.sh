#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo " *************************************************************************"
  echo " ********* Please run as root  : sudo ./create_desktop_application.sh *********"
  echo " ******************************************************************************"
  exit
fi

read -p "Application name : " appsName
appName=${appsName// /-}
appName=${appName,,}

read -p "Path to application launcher : " appsLauncher

read -p "Path to application icon : " appsIcon
appsIcon="$(dirname "${appsIcon}")/$(basename "${appsIcon}")"
newAppsIcon="$(dirname "${appsLauncher}")/$(basename "${appsLauncher}").png"

if [ ! -f "$newAppsIcon" ]
then
	echo "Copying application icon ..."
	cp $appsIcon $newAppsIcon
fi

while true; do
	read -p "Application category : (Tape 'all' to show all categories) " appsCategory
	case $appsCategory in
		[allAllALL]* )
		echo '
		|--------------------------------------------------------------------------------------------|
		|Main Category|Description                                                                   |  
		|-------------|------------------------------------------------------------------------------|  
		|AudioVideo   |Application for presenting, creating, or processing multimedia (audio/video)  |
		|Audio        |An audio application                                                          |  
		|Video        |A video application                                                           |  
		|Development  |An application for development                                                |    
		|Education    |Educational software                                                          |  
		|Game         |A game                                                                        |  
		|Graphics     |Application for viewing, creating, or processing graphics                     | 
		|Network      |Network application such as a web browser                                     |  
		|Office       |An office type application                                                    |  
		|Science      |Scientific software                                                           |  
		|Settings     |Settings applications                                                         |  
		|System       |System application, "System Tools" such as say a log viewer or network monitor|  
		|Utility      |Small utility application, "Accessories"                                      |  
		|-------------|------------------------------------------------------------------------------|';;
		"")
		echo "Please enter a category.";;
		*)
		echo "$appsCategory"
		break
	esac
done

echo "creating file desktop..."
cat > $appName.desktop << EOF
[Desktop Entry]
Name=$appsName
Comment=$appsName Desktop
GenericName=$appsName Client for Linux
Exec=$appsLauncher
Icon=$appsIcon
Type=Application
StartupNotify=true
Categories=$appsCategory;
EOF

mv "$appName".desktop /usr/share/applications
