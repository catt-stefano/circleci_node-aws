FROM circleci/node:8.11
RUN sudo apt-get update -qq && sudo apt-get install -y postgresql python-pip python-dev build-essential
RUN sudo pip install --upgrade pip
RUN sudo pip install --upgrade virtualenv
RUN sudo pip install awscli
# Install Chrome
RUN sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo dpkg -i google-chrome-stable_current_amd64.deb; sudo apt-get -fy install
# RUN sudo export CHROME_BIN=/usr/bin/google-chrome
