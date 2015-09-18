# build based on centos
FROM centos:latest
MAINTAINER sczyh30 <root@sczyh30.com>

# update the list
RUN yum update -y

# install openssl openssl-dev apr-devel
RUN yum -y install openssl openssl-devel apr-devel  

# install the openjdk basic dependencies
RUN yum -y install java-1.8.0-openjdk \
	&& yum -y install java-1.8.0-openjdk-devel \

# install Hadoop 2.7.1
RUN cd /opt && curl -O ftp://ftp.meisei-u.ac.jp/mirror/apache/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz \
	&& tar -xzvf hadoop-2.7.1.tar.gz && rm -rf hadoop-2.7.1.tar.gz \
	&& cd hadoop-2.7.1 && mkdir input \
	&& cp etc/hadoop/* input
ENV HADOOP_HOME /opt/hadoop-2.7.1

# set the workdir
#WORKDIR /opt/hadoop-2.7.1

# copy the configure files
COPY etc /opt/hadoop-2.7.1/etc

# expose the port
EXPOSE 8088 50070
# execute the command to run the Hadoop
CMD /hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount input output

