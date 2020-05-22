FROM aaronang/conda-pynini:latest

RUN apt-get update \
    && apt-get install -y unzip \
    && rm -rf /var/lib/apt/lists/* \
    && wget http://soar.eecs.umich.edu/downloads/SoarSuite/SoarSuite_9.6.0-Multiplatform_64bit.zip \
    && unzip -d /usr/local SoarSuite_9.6.0-Multiplatform_64bit.zip \
    && rm SoarSuite_9.6.0-Multiplatform_64bit.zip
