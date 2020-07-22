FROM centos:centos7

# prepare
RUN yum -y update && yum clean all
RUN yum -y install epel-release

# install golang
RUN curl "https://storage.googleapis.com/golang/go1.14.6.linux-amd64.tar.gz" > "/opt/go1.14.6.linux-amd64.tar.gz"
RUN tar -C /usr/local -xzf /opt/go1.14.6.linux-amd64.tar.gz

# set PATH
RUN echo "export GOPATH=/go" > /etc/profile.d/gopath.sh
RUN echo "export PATH=$GOPATH/bin:/usr/local/go/bin/:$PATH" >> /etc/profile.d/gopath.sh
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# add libs
ENV PKG_CONFIG_PATH /usr/local/lib/pkgconfig
RUN yum install -y —enable-repo=epel build-essential gcc g++ libtool-ltdl fftw3 libXt openjpeg2 openjpeg2-devel libraqm
RUN yum install -y —enable-repo=epel https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-7.0.10-24.x86_64.rpm
RUN yum install -y —enable-repo=epel https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-7.0.10-24.x86_64.rpm
RUN yum install -y —enable-repo=epel https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-devel-7.0.10-24.x86_64.rpm
