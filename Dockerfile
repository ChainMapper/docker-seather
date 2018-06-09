FROM joshendriks/walletbase

ENV GIT_COIN_URL    https://github.com/Seather/Seather.git
ENV GIT_COIN_NAME   seather   

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& chmod +x autogen.sh \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& ./autogen.sh && ./configure \
	&& make \
	&& make install \
	&& cd / && rm -rf /$GIT_COIN_NAME \
	&& mkdir /data \
	&& mkdir /data/.seather
	
#Add a config so you can run without providing a seather.conf through a volume
COPY seather.conf /data/.seather/seather.conf

#rpc port and main port
EXPOSE 22501 22500

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh