#!/bin/bash
amazon-linux-extras enable corretto8

yum clean metadata

yum install -y java-1.8.0-amazon-corretto
java -version

amazon-linux-extras enable tomcat8.5
yum clean metadata
yum install -y tomcat
