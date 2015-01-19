FROM rolymobile/bitcore:latest

RUN apt-get install -y \
	firefox \
	xvfb xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic && \
	rm -rf /var/lib/apt/lists/* && \
	echo "export FIREFOX_BIN='/usr/bin/firefox'" >> ~/.bashrc && \
	echo "export DISPLAY=:10" >> ~/.bashrc && \
	echo "Xvfb :10 -ac &" >> ~/.bashrc

WORKDIR /tmp/node_modules/bitcore
CMD bash -c 'node_modules/.bin/gulp test'
