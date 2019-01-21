FROM ubuntu:16.04
MAINTAINER marco.capuccini@it.uu.se

# Install OEDocking
COPY OpenEye-applications-2018.Nov.3-Ubuntu-16.04-x64.tar.gz /
RUN tar xzvf /OpenEye-applications-2018.Nov.3-Ubuntu-16.04-x64.tar.gz && \
    ln -s /openeye/bin/* /bin && \
    rm /OpenEye-applications-2018.Nov.3-Ubuntu-16.04-x64.tar.gz && \
    apt-get update && \
    apt-get install -y openssh-client

# Add license
RUN mkdir /var/openeye
ADD oe_license.txt /var/openeye
ENV OE_LICENSE /var/openeye/oe_license.txt

# Add receptor
ADD hiv1_protease.oeb /var/openeye
