FROM node:15.5.1-buster

LABEL \
  node.version=15.5.1 \
  debian.version=buster

WORKDIR /usr/src/app

RUN \
  apt-get update && \
  apt-get install -y \
  wget \
  gnupg \
  unzip \
  tar \
  make \
  tree && \
  wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - && \
  echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list && \
  apt-get update && \
  apt-get install -y mongodb-org && \
  systemctl daemon-reload && \
  systemctl start mongod && \
  systemctl enable mongod && \
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
