FROM ubuntu:16.04
MAINTAINER lglenn@lglenn.io
ENV pandoc_debfile /pandoc.deb
RUN apt-get --yes update
RUN apt-get --yes install curl
RUN curl --location --output ${pandoc_debfile} https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
RUN dpkg --install ${pandoc_debfile}
RUN rm ${pandoc_debfile}
RUN apt-get --yes install texlive texstudio 
WORKDIR /source
ENTRYPOINT ["pandoc"]
