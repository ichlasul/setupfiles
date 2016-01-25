sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:strukturag/libde265
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get install -y synaptic y-ppa-manager \
						vlc clementine \
						openjdk-7-jre oracle-java8-installer flashplugin-installer \
						unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller \
						libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 \
						vlc-plugin-libde265 gstreamer0.10-libde265 streamer1.0-libde265 \
						google-chrome-stable chromium firefox filezilla deluge youtube-dl

sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras gthumb \
						gparted \
						bleachbit unity-tweak-tool dconf-cli dconf-editor imwheel \
						connect-proxy corkscrew indicator-netspeed

sudo apt-get install -y git \
						zsh tmux \
						vim sublime-text-installer atom  \
						ack-grep stow \
						curl aria2 \
						build-essential python-pip python-dev nodejs npm \
						virtualbox vagrant docker \
						ffmpeg \
						htop

sudo apt-get install -y ubuntu-restricted-extras

sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
