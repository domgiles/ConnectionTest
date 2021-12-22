## Simple Oracle Connection Tester

### Pre-requisites
You'll need a JVM of version 11 or higher. OpenJDK or Oracle works fine
If you want to use the oci connectivity you'll need to have an Oracle Client installed (Instant or full fat). The ivy client used will download 19.8 jar files. If you want to use a different client make sure you edit ```ivy.xml```  

### Install

I find it useful to test the performance of connectivity to an Oracle Database. This utility will connect to an Oracle Database with a user specified number of threads and report the time taken to connect. 

You can build the jar file with the following command
```shell
./build.sh
```
This should create a jar file called ```connectiontest.jar```. You can then invoke it using a command similar to 
```shell
java -jar connectiontest.jar
```
This should output
```shell
ERROR : Missing required options: u, p, cs
usage: parameters:
 -cf <zipfile>         credentials file in zip format
 -cs <connectstring>   connect string
 -ct <threadcount>     pds or ods
 -debug                turn on debugging. Written to standard out
 -dt <driver_type>     Driver Type [thin,oci]
 -o <output>           output : valid values are stdout,csv
 -p <password>         password
 -tc <threadcount>     thread count, defaults to 1
 -u <username>         username
```
I believe the options should be self-explanatory however a simple example is shown below
```shell
$ java -Djava.library.path=$JAVA_PATH -jar connectiontest.jar -u soe -p soe -cs //localhost/soe -tc 4
Using Oracle Driver version 19.8.0.0.0, Built on Tue_May_19_13:39:46_PDT_2020
Connecting using a thin driver
Connected 1 threads, Average connect time = 715.00ms, Total time to connect all threads = 729ms
```