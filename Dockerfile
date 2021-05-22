FROM centos:7

COPY fonts/* /usr/share/fonts/
WORKDIR /root
RUN yum -y install wget && \
    wget https://jaist.dl.sourceforge.net/project/openofficeorg.mirror/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz && \
    wget https://jaist.dl.sourceforge.net/project/openofficeorg.mirror/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_langpack-rpm_en-US.tar.gz && \
    tar -zxvf Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz && \
    tar -zxvf Apache_OpenOffice_4.1.6_Linux_x86-64_langpack-rpm_en-US.tar.gz && \
    cd en-US/RPMS/ && \
    rpm -ivh *.rpm && \
    cd desktop-integration && \
    rpm -ivh openoffice4.1.6-redhat-menus-4.1.6-9790.noarch.rpm && \
    yum -y install java-1.8.0-openjdk-devel.x86_64

