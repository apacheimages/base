FROM alpine

ENV OTP_VERSION_MAJOR=19 \
    OTP_VERSION_MINOR=0 

RUN apk upgrade --update && \
    apk add --update libstdc++ curl wget ca-certificates bash gcc make openssl g++ perl ncurses-dev openjdk8

WORKDIR /opt/
RUN wget http://erlang.org/download/otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz 
RUN    tar zxf otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz && \
    rm -f otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}.tar.gz 


#COPY otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR} /opt/otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR}

RUN ln -s /opt/otp_src_${OTP_VERSION_MAJOR}.${OTP_VERSION_MINOR} /opt/otp_src
WORKDIR /opt/otp_src
RUN ./configure --prefix /usr/local && make && make install 

