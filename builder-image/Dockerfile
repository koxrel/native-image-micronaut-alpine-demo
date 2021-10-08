FROM alpine:latest as builder
ENV NIK_INSTALL_DIR=/jdk
ENV NIK_HOME=$NIK_INSTALL_DIR/nik
ENV JAVA_HOME=$NIK_HOME
ENV PATH=$JAVA_HOME/bin:$PATH
RUN apk --update add bash g++ make zlib-static
RUN wget https://download.bell-sw.com/vm/21.2.0/bellsoft-liberica-vm-openjdk11-21.2.0-linux-x64-musl.tar.gz \
    && mkdir $NIK_INSTALL_DIR \
    && tar -C $NIK_INSTALL_DIR -xzf bellsoft-liberica-vm-openjdk11-21.2.0-linux-x64-musl.tar.gz \
    && mv $NIK_INSTALL_DIR/bellsoft-liberica-vm-openjdk11-21.2.0 $NIK_HOME \
    && rm bellsoft-liberica-vm-openjdk11-21.2.0-linux-x64-musl.tar.gz \
    && gu install native-image
