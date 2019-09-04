#!/bin/bash

option=3

while [ $option != 0 ]; do

	echo "=======================================================
	Install Auto Software in Ubuntu 19.04
	Author: FASR
	Email: franciscosouzaacer@gmail.com
	Site: https://rodriguesfas.com.br

	Select Category:
	1 - Development				10 - Entertainment
	2 - Social					11 - Art and design
	3 - Productivity			12 - Finance
	4 - Utilities				13 - News and weather
	5 - Photo and video			14 - Science
	6 - Server and cloud		15 - Health and fitness
	7 - Security				16 - Education	
	8 - Devices and iot			17 - Personalisation
	9 - Music and audio			18 - Books and reference

	0 - Exit
	======================================================="

	read option
	case $option in

		1)
			echo "=========================================
			Select App:
			1 - Android Studio (Snap)
			2 - Visual Studio Code (Snap)
			3 - Arduino (Snap)
			4 - Spyder
			5 - MongoDB Compass
			6 - SQLite Browser
			7 - Postman
			8 - Anaconda
			9 - Jupyter
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo snap install android-studio
				;;
			2)
				sudo snap install code --classic
				;;
			3)
				sudo snap install arduino-mhall119
				;;
			4)
				sudo apt install spyder
				;;
			5) ;;
			6)
				sudo snap install sqlitebrowser --edge
				;;
			7)
				sudo snap install postman
				;;
			8)
				sudo snap install conda --beta
				;;
			9)
				sudo snap install jupyter
			;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		2)
			echo "=========================================
			Select App:
			1 - Skype (Snap)
			2 - Discord (Snap)
			3 - Telegram Desktop (Snap)
			4 - Slack (Snap)
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo snap install skype --classic
				;;
			2)
				sudo snap install discord
				;;
			3)
				sudo snap install telegram-desktop
				;;
			4)
				sudo snap install slack --classic 
			;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		3)
			echo "=========================================
			Select App:
			1 - Skype (Snap)
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo snap install skype --classic
				;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		4)
			echo "=========================================
			Select App Utilities
			1 - Snap
			2 - Snap Store (Snap)
			3 - GNOME System Monitor (Snap)
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo apt update
				sudo apt install snapd
				;;
			2)
				sudo snap install snap-store
				;;
			3)
				sudo snap install gnome-system-monitor 
			;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		5)
			echo "=========================================
			Select App:
			1 - 
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1) ;;

			\
				*)
				echo "Opção invalida!"
				;;
			esac
			;;

		6)
			echo "=========================================
			Select App:
			1 - 
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1) ;;

			\
				*)
				echo "Opção invalida!"
				;;
			esac
			;;

		7)
			echo "=========================================
			Select App:
			1 - 
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1) ;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		8) ;;

		9)
			echo "=========================================
			Select App:
			1 - Deepin Music
			2 - Spotify
			0 - Exit
			============================================="
			read option_app
			case $option_app in
				1)
					sudo snap install deepin-music
				;;
				2)
					sudo snap install spotify
				;;
				*)
					echo "Opção invalida!"
					;;
			esac
			;;

		10) ;;
		
		11)

			echo "=========================================
			Select App:
			1 - Gwenview (Snap)
			2 - Inkscape (Snap)
			3 - Gimp (Snap)
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo snap install gwenview
				;;
			2)
				sudo snap install inkscape
				;;
			3)
				sudo apt install gimp
				;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		16)
			echo "=========================================
			Select App:
			1 - Overleaf Desktop (Snap)
			0 - Exit
			============================================="
			read option_app
			case $option_app in
			1)
				sudo snap install overleaf
				;;
			*)
				echo "Opção invalida!"
				;;
			esac
			;;

		100)
			echo "Digite seu login do CIn:"
			read login
			stty -echo
			echo "Digite sua senha de acesso aos laboratórios:"
			read senha
			stty echo
			nmcli connection add type vpn vpn-type l2tp ifname '*' con-name 'VPN-CIn'
			sudo nmcli connection modify id VPN-CIn vpn.user-name $login
			sudo nmcli connection modify id VPN-CIn connection.permissions user:$login
			sudo nmcli connection modify id VPN-CIn autoconnect false
			sudo nmcli connection modify id VPN-CIn +vpn.data "gateway=vpn.cin.ufpe.br,ipsec-enabled=yes,ipsec-esp=3des-sha1,ipsec-ike=3des-sha1-modp1024,ipsec-psk=CInVpnSharedKey,mru=1400,mtu=1400,password-flags=0,refuse-chap=yes,refuse-eap=yes,refuse-pap=yes,user=$login"
			nmcli connection modify id VPN-CIn vpn.secrets "password=$senha"
			sudo service network-manager restart
			sleep 5s
			nmcli connection up id VPN-CIn
			sudo -k
			;;

		0)
			echo "Thank you for using the automatic installer. See you!"
			exit
			;;

		*)
			echo "Opção invalida!"
			;;

		esac

done
