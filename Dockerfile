FROM node:15.5.1-buster

LABEL \
  node.version=15.5.1 \
  debian.version=buster

WORKDIR /opt/node_app

RUN \
  apt-get update && \
  apt-get install -y \
  wget \
  unzip \
  tar \
  make \
  tree && \
  npm i express \
  express-session \
  express-ejs-layouts \
  connect-flash \
  passport \
  passport-local \
  mongoose \
  bcrypt \
  ejs
CMD ["/bin/bash"]
