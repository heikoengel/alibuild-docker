FROM centos:7
RUN yum install -y epel-release

# Install O2 requirements
RUN yum install -y git mysql-devel curl curl-devel python python-devel python-pip bzip2 bzip2-devel unzip autoconf automake texinfo gettext gettext-devel libtool freetype freetype-devel libpng libpng-devel sqlite sqlite-devel ncurses-devel mesa-libGLU-devel libX11-devel libXpm-devel libXext-devel libXft-devel libxml2 libxml2-devel motif motif-devel kernel-devel pciutils-devel kmod-devel bison flex perl-ExtUtils-Embed environment-modules gcc-c++

# Install custom requirements
RUN yum install -y emacs

# Install & enable GCC7
RUN yum install -y centos-release-scl
RUN yum-config-manager --enable rhel-server-rhscl-7-rpms
RUN yum install -y devtoolset-7
ENV PATH /opt/rh/devtoolset-7/root/usr/bin:$PATH

# Install & set up aliBuild
RUN pip install -U pip alibuild
RUN mkdir -p /alice
WORKDIR /alice
ENV ALIBUILD_WORK_DIR "/alice/sw"
