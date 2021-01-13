FROM mongo

WORKDIR /usr/src/app

RUN \
  apt-get update && \
  apt-get install -y \
  apt-utils \
  wget \
  gnupg \
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
