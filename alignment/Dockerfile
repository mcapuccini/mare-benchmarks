FROM nfcore/eager:2.0.2
LABEL maintainer="Marco Capuccini <marco.capuccini@it.uu.se>"

RUN mkdir /ref
WORKDIR /ref

# download the reference genome and unzip it
RUN wget -nv http://uppnex.se/human_g1k_v37.fa.tar.gz && \
    tar -xzf human_g1k_v37.fa.tar.gz ; \
    rm human_g1k_v37.fa.tar.gz

WORKDIR /
