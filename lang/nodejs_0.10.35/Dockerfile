FROM rolymobile/python:2.7.9

ENV VERSION 0.10.35
ENV SRC_FILENAME node-v$VERSION.tar.gz

RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v$VERSION/$SRC_FILENAME && \
  tar xvzf $SRC_FILENAME && \
  rm -f $SRC_FILENAME && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  npm install -g npm && \
  echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

CMD bash
