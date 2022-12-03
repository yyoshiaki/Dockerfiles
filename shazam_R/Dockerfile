FROM bioconductor/bioconductor_docker:RELEASE_3_17

LABEL  maintainer "yyasumizu <y.yasumizu@gmail.com>"

# RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
#   echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
#    apt-get update -qq && apt-get install -y wget gnupg 
# RUN apt-get update && apt-get install -y wget  software-properties-common

# RUN add-apt-repository ppa:webupd8team/java && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && apt update && apt install oracle-java8-installer
# RUN apt-get install apt-file && apt-file update && apt-get install software-properties-common
# RUN add-apt-repository ppa:webupd8team/java && 

# RUN add-apt-repository ppa:openjdk-r/ppa && apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get update
RUN R -e 'BiocManager::install("GenomicAlignments")'
RUN R -e 'install.packages(c("shazam", "tidyverse"))'

RUN mkdir -p /data
WORKDIR /data

COPY calc_SHM.R /bin


# CMD ["Rscript"]
