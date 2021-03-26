FROM cimg/node:15.11.0
RUN sudo apt-get update -qq && sudo apt-get install -y postgresql python-pip python-dev build-essential
RUN sudo pip install --upgrade pip
RUN sudo pip install --upgrade virtualenv
RUN sudo pip install awscli
