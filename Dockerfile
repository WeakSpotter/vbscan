FROM perl:5.32

ENV URL=""

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/OWASP/VBScan.git /opt/vbscan

WORKDIR /opt/vbscan

COPY ./test.sh .
RUN chmod +x vbscan.pl
RUN chmod +x test.sh

ENTRYPOINT ["/bin/bash", "-c", "./test.sh $URL" ]