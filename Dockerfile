FROM mongo

WORKDIR /usr/src/app

RUN \
  apt-get update && \
  apt-get install -y \
  apt-utils \
  wget \
  curl \
  gnupg \
  unzip \
  tar \
  build-essential \
  make \
  tree && \
  curl -sL https://deb.nodesource.com/setup_15.3 -o nodesource_setup.sh && \
  cat nodesource_setup.sh &&\
  bash nodesource_setup.sh && \
  apt install nodejs npm && \
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
