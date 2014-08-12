FROM sci-apps-base

MAINTAINER Walter Moreira <wmoreira@tacc.utexas.edu>

ENV _APP Blast
ENV _VERSION 2.2.29
ENV _LICENSE ___
ENV _AUTHOR ncbi

ADD usage.txt /docs/blast/usage.txt
ADD examples.txt /docs/blast/examples.txt
ADD intro.txt /docs/blast/intro.txt

ADD examples.tgz /

WORKDIR /tmp
RUN curl -LO ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.2.29/ncbi-blast-2.2.29+-1.x86_64.rpm && \
    yum install -y ncbi-blast-2.2.29+-1.x86_64.rpm && \
    rm ncbi-blast-2.2.29+-1.x86_64.rpm

WORKDIR /data
