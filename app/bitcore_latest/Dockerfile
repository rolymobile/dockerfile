FROM rolymobile/nodejs:0.10.35

COPY bitcore /tmp/app/bitcore
RUN apt-get update -qqy &&\
	apt-get install -qqy \
	git && \
	rm -rf /var/lib/apt/lists/* && \
	npm install bitcore && \
	cd node_modules/bitcore && \
	npm install -l && \
	chmod +x /tmp/app/bitcore
ENTRYPOINT ["/tmp/app/bitcore"]
CMD []
