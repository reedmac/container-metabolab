FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="0.99.6.1"
LABEL version="0.1"
LABEL software="MetaboLab"


RUN apt-get -y update && apt-get -y install --no-install-recommends libxtst6 libxt6 wget zip unzip && \
wget  -P /usr/local/bin http://beregond.bham.ac.uk/~nmrlab/metabolabBinary1DLinux/metabolab1d.zip && \
wget -P /usr/local/bin http://beregond.bham.ac.uk/~nmrlab/metabolabBinary1DLinux/MATLAB_Runtime.zip && \
unzip -d /usr/local/bin/metabolab1d /usr/local/bin/metabolab1d.zip && \
unzip -d /usr/local/bin /usr/local/bin/MATLAB_Runtime.zip && \
rm -r /usr/local/bin/metabolab1d.zip && \
rm -r /usr/local/bin/MATLAB_Runtime.zip && \
apt-get purge -y wget zip unzip && \
apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:/usr/local/bin/MATLAB_Runtime/v91/runtime/glnxa64:/usr/local/bin/MATLAB_Runtime/v91/bin/glnxa64:/usr/local/bin/MATLAB_Runtime/v91/sys/os/glnxa64

ENTRYPOINT ["/usr/local/bin/metabolab1d/run_MetaboLab1D.sh","/usr/local/bin/MATLAB_Runtime/v91","/mydata/container_script.ml"]


