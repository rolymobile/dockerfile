FROM node:0.10

WORKDIR /app
ADD ssh/* /root/.ssh/
RUN \
  npm install -g npm && \
  ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN \
  git clone git@github.com:rolymobile/roly-bitcore.git /app && \
  npm install

CMD ["npm","start"]
EXPOSE 3000
