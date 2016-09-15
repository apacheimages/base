FROM alpine

ENV OTP_VERSION_MAJOR=17 \
    OTP_VERSION_MINOR=0 

WORKDIR /opt/
RUN wget http://erlang.org/download/otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz && \
    apk upgrade --update && \
    apk add --update libstdc++ curl ca-certificates bash gcc make openssl g++ perl ncurses-dev && \
    tar zxf otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz && \
    ln -s /opt/otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR} /opt/otp_src && \
    rm -f otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz && \
    apk del wget curl make && \
    rm -rf /tmp/* /var/cache/apk/* 

WORKDIR /opt/otp_src
RUN ./configure --prefix /usr/local && make && make install 
