FROM ubuntu:xenial

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="Metabolab command line interface."

# Update & upgrade sources
RUN apt-get -y update
RUN apt-get -y dist-upgrade

# Install development files needed
#RUN apt-get -y install git wget default-jre-headless
RUN apt-get -y install wget zip unzip

# Clean up
#RUN apt-get -y clean && apt-get -y autoremove && rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/*

# Install Metabolab 
RUN wget -O /usr/local/bin/MetaboLabLinuxInstaller_mcr.install http://beregond.bham.ac.uk/~ludwigc/MetaboLabLinuxInstaller_mcr.install
RUN chmod +x /usr/local/bin/MetaboLabLinuxInstaller_mcr.install
RUN echo "hello"
#RUN /usr/local/bin/MetaboLabLinuxInstaller_mcr.install -mode silent -agreeToLicense yes
#RUN /usr/local/bin/MetaboLabLinuxInstaller_mcr.install -mode silent 
#RUN /usr/local/bin/MetaboLabLinuxInstaller_mcr.install -mode silent agreeToLicense='y'
#RUN /usr/local/bin/MetaboLabLinuxInstaller_mcr.install -mode silent --agreeToLicense='yes'
RUN /usr/local/bin/MetaboLabLinuxInstaller_mcr.install -mode silent -agreeToLicense yes

#RUN wget -O /usr/local/bin/MetFragCLI.jar http://msbi.ipb-halle.de/~cruttkie/92f73acb731145c73ffa3dfb8fd59581bee0d844963889338c3ec173874b5a5f/MetFrag-2.4.jar

# Define Entry point script
#ENTRYPOINT ["java", "-jar", "/usr/local/bin/MetFragCLI.jar"]

#ADD runTest1.sh /usr/local/bin/runTest1.sh
#RUN chmod +x /usr/local/bin/runTest1.sh
