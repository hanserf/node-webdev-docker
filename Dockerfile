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
  gcc \
  g++ \
  make \
  tree && \
  curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh && \
  cat nodesource_setup.sh | sed -e 's/\<sudo\>//g' > nodeinstall_cleaned.sh && \
  cat nodeinstall_cleaned.sh | grep sudo && \
  bash nodeinstall_cleaned.sh && \
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
  
  sudo apt-get install -y nodejs` to install Node.js 14.x and npm
## You may also need development tools to build native addons:
     sudo apt-get install gcc g++ make
  
CMD ["/bin/bash"]
