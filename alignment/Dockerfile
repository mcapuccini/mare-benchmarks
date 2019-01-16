FROM nfcore/eager:2.0.2
LABEL maintainer="Marco Capuccini <marco.capuccini@it.uu.se>"

RUN mkdir /ref
WORKDIR /ref

# download the reference genome and untar it
RUN wget -qO- http://uppnex.se/human_g1k_v37.fasta.tar.gz | tar xvz

WORKDIR /
