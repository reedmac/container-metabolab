FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get update
RUN apt-get -y upgrade

ADD ./MetaboLab1D /usr/local/bin/MetaboLab1D
ADD ./MATLAB_Runtime /usr/local/bin/MATLAB_Runtime
ENTRYPOINT ["/usr/local/bin/MetaboLab1D/application/run_MetaboLab1D.sh","/usr/local/bin/MATLAB_Runtime/v91","container_script.ml"]
