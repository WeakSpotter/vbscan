FROM perl:5.32

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/OWASP/VBScan.git /opt/vbscan

WORKDIR /opt/vbscan

RUN chmod +x vbscan.pl

ENTRYPOINT [ "perl", "vbscan.pl" ]