FROM chrishah/cutadapt:2.0

MAINTAINER <christoph.hahn@tugraz.at>

#RUN apt-get update && apt-get -y upgrade && apt-get install -y build-essential python3 python3-pip python3-dev && \
#	apt-get clean && apt-get purge && \
#        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#RUN pip3 install --upgrade cutadapt

WORKDIR /usr/src

#Get fastqc
RUN apt-get update && apt-get -y upgrade && apt-get install -y wget zip default-jre && \
	apt-get clean && apt-get purge && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip && \
	unzip fastqc_v0.11.8.zip && \
	rm fastqc_v0.11.8.zip && \
	chmod a+x FastQC/fastqc

#trim galore
RUN wget https://github.com/FelixKrueger/TrimGalore/archive/0.6.0.tar.gz -O trim_galore.tar.gz && \
	tar xvzf trim_galore.tar.gz

ENV PATH=$PATH:/usr/src/FastQC/:/usr/src/TrimGalore-0.6.0/
