FROM ubuntu:17.04
MAINTAINER lglenn@lglenn.io
ENV pandoc_debfile /pandoc.deb
RUN apt-get --yes update
RUN apt-get --yes install curl
RUN curl --location --output ${pandoc_debfile} https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
RUN dpkg --install ${pandoc_debfile}
RUN rm ${pandoc_debfile}
RUN apt-get --yes install texlive texstudio texlive-pictures
RUN apt-get --yes install wget xzdec
RUN tlmgr init-usertree
RUN tlmgr install sauerj
RUN tlmgr install xifthen
RUN tlmgr install ifmtarg
RUN tlmgr install hardwrap
RUN tlmgr install titlesec
RUN tlmgr install changepage
RUN tlmgr install paralist
RUN tlmgr install fancyhdr
RUN tlmgr install geometry
RUN tlmgr install hyperref
RUN tlmgr install natbib
RUN tlmgr install placeins
RUN tlmgr install setspace
RUN tlmgr install textcase
RUN tlmgr install xcolor
RUN tlmgr install units
RUN tlmgr install lipsum
RUN tlmgr install csquotes
RUN tlmgr install mdwtools
RUN tlmgr install upquote
RUN tlmgr install bidi
RUN tlmgr install sourcesanspro
RUN tlmgr install caption
RUN tlmgr install geometry
RUN tlmgr install ulem
RUN tlmgr install babel
RUN tlmgr install framed
RUN tlmgr install amsmath
RUN tlmgr install bidi
RUN tlmgr install csquotes
RUN tlmgr install eurosym
RUN tlmgr install fancyhdr
RUN tlmgr install fancyvrb
RUN tlmgr install oberdiek
RUN tlmgr install hyperref
RUN tlmgr install ifxetex
RUN tlmgr install ifluatex
RUN tlmgr install listings
RUN tlmgr install booktabs
RUN tlmgr install mathspec
RUN tlmgr install pagecolor
RUN tlmgr install parskip
RUN tlmgr install polyglossia
RUN tlmgr install relsize
RUN tlmgr install sectsty
RUN tlmgr install setspace
RUN tlmgr install sourcecodepro
RUN tlmgr install titling
RUN tlmgr install unicode-math
RUN tlmgr install etoolbox
RUN tlmgr install ly1
RUN tlmgr install mweights
WORKDIR /source
ENTRYPOINT ["pandoc"]
