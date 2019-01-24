#!/bin/bash

#Install Python dependencies
sudo apt-get update
sudo apt-get install python-dev gettext python3-pip  libmysqlclient-dev
python -V
pyenv install 3.4.4
pyenv global 3.4.4

python -V

pip3 install --upgrade pip setuptools
pip3 install -r requirements.txt

pip3 install selenium==3.8.0
pip3 install behave
pip3 install allure-behave
pip3 install pyvirtualdisplay
pip3 install ipdb
pip3 install xvfbwrapper
pip3 install nose

#Install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

#install chrome driver
yes | wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip && yes | sudo unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

mkdir /tmp/artifacts
