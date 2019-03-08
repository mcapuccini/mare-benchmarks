FROM nfcore/eager:2.0.2
LABEL maintainer="Marco Capuccini <marco.capuccini@it.uu.se>"
ARG REF_URL

RUN mkdir /ref
WORKDIR /ref

# download the reference genome and untar it
RUN wget -qO- ${REF_URL} | tar xvz

WORKDIR /
