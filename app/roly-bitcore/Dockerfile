FROM node:0.10

WORKDIR /app
RUN mkdir -p /root/.ssh
ADD ssh/* /root/.ssh/
RUN \
  chmod 600 /root/.ssh/id_rsa && \
  echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

#RUN ssh-keyscan github.com >> /root/.ssh/known_hosts
#RUN echo " IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config

RUN \
  npm install -g npm && \
  git clone git@github.com:rolymobile/roly-bitcore.git /app && \
  npm install

CMD ["npm","start"]
EXPOSE 3000
