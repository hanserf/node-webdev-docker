FROM mongo

WORKDIR /usr/src/app
COPY install_node_script.sh .
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
  bash install_node_script.sh && \ 
  apt-get install -y nodejs && \
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
