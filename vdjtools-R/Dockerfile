FROM rocker/r-ver:3.1.0

LABEL  maintainer "yyasumizu <y.yasumizu@gmail.com>"

# RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
#   echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
#    apt-get update -qq && apt-get install -y wget gnupg 
# RUN apt-get update && apt-get install -y wget  software-properties-common

# RUN add-apt-repository ppa:webupd8team/java && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && apt update && apt install oracle-java8-installer
# RUN apt-get install apt-file && apt-file update && apt-get install software-properties-common
# RUN add-apt-repository ppa:webupd8team/java && 

RUN echo "deb http://deb.debian.org/debian stretch main" > /etc/apt/sources.list \
    echo "deb http://security.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list \
    echo "deb http://deb.debian.org/debian stretch-updates main" >> /etc/apt/sources.list
RUN apt-get update ; exit 0
RUN apt-get -y install r-cran-ape r-cran-ggplot2 r-cran-gplots r-cran-mass \
  r-cran-plotrix r-cran-rcolorbrewer r-cran-reshape r-cran-reshape2 \
  r-cran-scales wget

# Error: This is R 3.1.0, package ‘ape’ needs >= 3.2.0
# RUN R -e "install.packages(c('circlize', 'grid', 'gridExtra', 'VennDiagram'))"
# RUN R -e ".libPaths(c(.libPaths(), '/usr/lib/R/site-library'))"

RUN R -e 'install.packages(c("reshape2", "FField", "reshape", "gplots", \
                    "gridExtra", "circlize", "ggplot2", "grid", \
                    "VennDiagram", "ape", "MASS", "plotrix", \
                    "RColorBrewer", "scales"))'
RUN wget https://cran.r-project.org/src/contrib/Archive/ape/ape_3.5.tar.gz
RUN R CMD INSTALL ape_3.5.tar.gz

RUN mkdir -p /data
WORKDIR /data

COPY cluster_samples_mod.r /data

CMD ["R"]
