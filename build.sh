#!/bin/bash
cd `dirname "$0"`
export CLASSPATH=ant/ant.jar:ant/ant-launcher.jar:$JAVA_HOME/lib/tools.jar:$CLASSPATH
java org.apache.tools.ant.Main
