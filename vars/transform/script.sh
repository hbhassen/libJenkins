#!/bin/bash
cp input2.xml input3.xml
sed -i 's#<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">#<project>#' input3.xml
#xsltproc transform.xsl input3.xml > output.html
#xsltproc dep.xsl input3.xml > depoutput.html
xsltproc transformer1.xsl input3.xml > deploy.xml

