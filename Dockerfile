################## Base Image ####################
FROM binfgsc/base:latest

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################## INSTALLATION ######################
ENV URL=https://github.com/alexdobin/STAR/archive/
ENV TAR=2.6.1c.tar.gz

RUN sudo apk add --no-cache 

RUN wget $URL/$TAR -P /opt && \
    sudo tar -xzvf /opt/$TAR -C /opt && \
    sudo ln -s /opt/STAR-2.6.1c/bin/Linux_x86_64_static/STAR /usr/local/bin/star