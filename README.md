# airgappython

The goal here is to be able to distribute the pip modules neede to install Instana

**Instructions:**

You should really create your own dependencies directory - I used a pip module called `pip-download` to grab everything :-

use the dependencies directory :
`pip-download instana`

Looking at the files downloaded, there were a ton of duplicates etc, so just rm'd the .whl files leaving me with :- 

drwxr-xr-x 2 justynroberts justynroberts   4096 Jul 21 09:33 .
drwxr-xr-x 4 justynroberts justynroberts   4096 Jul 21 09:46 ..
-rw-r--r-- 1 justynroberts justynroberts   2687 Jul 21 09:32 autowrapt-1.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts  21262 Jul 21 09:32 basictracer-3.2.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 147455 Jul 21 09:32 certifi-2021.5.30.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 345714 Jul 21 09:32 charset-normalizer-2.0.3.tar.gz
-rw-r--r-- 1 justynroberts justynroberts  19179 Jul 21 09:32 fysom-2.1.5.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 243962 Jul 21 09:32 idna-3.2.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 133672 Jul 21 09:32 instana-1.34.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts  46228 Jul 21 09:32 opentracing-2.4.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 228448 Jul 21 09:32 protobuf-3.17.3.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 104433 Jul 21 09:32 requests-2.26.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts  34041 Jul 21 09:32 six-1.16.0.tar.gz
-rw-r--r-- 1 justynroberts justynroberts 289927 Jul 21 09:32 urllib3-1.26.6.tar.gz
-rw-r--r-- 1 justynroberts justynroberts  27488 Jul 21 09:32 wrapt-1.12.1.tar.gz


Distributing these, and running `pip install *` on the directory worked for me.

The dockerfile contains a flask app, but that was just for testing. Feel free to modify or add

If you do use the  dockerfile:

`docker build -t airgap-instana .`
`docker run airgap-instana`

Any feedback welcome
