# container-metabolab

# MetaboLab 

## Version: 0.99.6.1 

## Short Description
 Software for processing and analysing NMR data

## Description
The MetaboLab software is an integrated software package for NMR data processing and analysis, closely linked to the previously developed NMRLab software. It includes tools for batch processing and gives access to a wealth of algorithms available in the MATLAB framework. Algorithms within MetaboLab help to optimize the flow of metabolomics data preparation for statistical analysis. The combination of an intuitive graphical user interface along with advanced data processing algorithms facilitates the use of MetaboLab in a broader metabolomics context.

This software has been adapted to function without a graphical user interface to be used here in a docker container.

## Key features

Automated phase correction, alignment of spectra, automated baseline correction, exclusion of unwanted spectral regions, segmental alignment, TSA/PQN scaling, bucketing, noise filtering and generalised logarithmic transform. 


## To run the container:

Clone the container:

docker clone https://github.com/reedmac/container-metabolab

Build the docker image:

docker image rm --force imeta_image1
docker build -t imeta_image1 .

Prepare the data directory. It must contain your metabolab script defining how the data should be processed. This must be called container_script.ml to match the name in Dockerfile.

Run the container without licence key:

docker  run  -v /path/to/mydatadirectory:`pwd` -w `pwd` -i --name imeta_container1 imeta_image1

& answer 'yes' to get the mac-address for the container
& email one of the addresses given at site below giving the mac-code and requesting a licence
http://beregond.bham.ac.uk/~ludwigc/metabolab_intro/metabolab/license.html
& they will email you the licence key.

Remove the old container you created:

docker rm imeta_container1

Create the container again but adding the licence key to the end of the command:

docker  run  -v /path/to/mydatadirectory:`pwd` -w `pwd` -i --name imeta_container1 imeta_image1  licensekey

The results should now be in your data directory.



## Instrument Data Types

Bruker and Agilent Spectrometers 

## Tool Authors

[Christian Ludwig](https://github/ludwigc),
Ulrich Guenther


## Container Contributors

[Michelle Reed](https://github.com/reedmac) (University of Birmingham)

## Git Repository


## Publications

- U.L. Günther, C. Ludwig, H. Rüterjans NMRLAB - Advanced NMR Data Processing in Matlab. J Magn Reson, 145(2), 201-208 (2000)

- C. Ludwig and U. Günther MetaboLab - advanced NMR data processing and analysis for metabolomics. BMC Bioinformatics, 12, 366, (2011)


