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

# install Scala (2.10.x)
RUN cd /opt && curl -O http://downloads.typesafe.com/scala/2.10.5/scala-2.10.5.tgz?_ga=1.127878221.1126409142.1434510369 \
	&& tar -xzvf scala-2.10.5.tgz?_ga=1.127878221.1126409142.1434510369 \
	&& rm -rf scala-2.10.5.tgz?_ga=1.127878221.1126409142.1434510369
ENV SCALA_HOME /opt/scala-2.10.5

# install Hadoop 2.7.1
RUN cd /opt && curl -O ftp://ftp.meisei-u.ac.jp/mirror/apache/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz \
	&& tar -xzvf hadoop-2.7.1.tar.gz && rm -rf hadoop-2.7.1.tar.gz
ENV HADOOP_HOME /opt/hadoop-2.7.1

# install Spark 1.5
RUN cd/opt && curl -O http://www.eu.apache.org/dist/spark/spark-1.5.0/spark-1.5.0-bin-hadoop2.6.tgz \
	&& tar -xzvf spark-1.5.0-bin-hadoop2.6.tgz && rm -rf spark-1.5.0-bin-hadoop2.6.tgz \
	&& mv spark-1.5.0-bin-hadoop2.6 spark-1.5.0
ENV SPARK_HOME /opt/spark-1.5.0

WORKDIR /opt

CMD 

