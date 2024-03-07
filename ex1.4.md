Start a Ubuntu image with the process `sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'`

```sh
$ docker run -it ubuntu
root@9e5bc78d2313:/# sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
Input website:
dacebook.com
Searching..
sh: 1: curl: not found
Input website:
^Z
[1]+  Stopped                 sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
root@9e5bc78d2313:/# apt install curl
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package curl
root@9e5bc78d2313:/# apt update
Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [119 kB]
Get:4 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [1914 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [109 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:8 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [1533 kB]      
Get:9 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]            
Get:11 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1076 kB]   
Get:12 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [44.6 kB] 
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [1952 kB]     
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [1812 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [50.4 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1347 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [28.1 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [50.4 kB]
Fetched 30.1 MB in 3s (10.0 MB/s)                            
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
root@9e5bc78d2313:/# apt install curl
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  ca-certificates libbrotli1 libcurl4 libldap-2.5-0 libldap-common libnghttp2-14 libpsl5 librtmp1 libsasl2-2 libsasl2-modules libsasl2-modules-db libssh-4 openssl publicsuffix
Suggested packages:
  libsasl2-modules-gssapi-mit | libsasl2-modules-gssapi-heimdal libsasl2-modules-ldap libsasl2-modules-otp libsasl2-modules-sql
The following NEW packages will be installed:
  ca-certificates curl libbrotli1 libcurl4 libldap-2.5-0 libldap-common libnghttp2-14 libpsl5 librtmp1 libsasl2-2 libsasl2-modules libsasl2-modules-db libssh-4 openssl publicsuffix
0 upgraded, 15 newly installed, 0 to remove and 0 not upgraded.
Need to get 2990 kB of archives.
After this operation, 7124 kB of additional disk space will be used.
Do you want to continue? [Y/n] 
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.15 [1186 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20230311ubuntu0.22.04.1 [155 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnghttp2-14 amd64 1.43.0-1ubuntu0.1 [76.7 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpsl5 amd64 0.21.0-1.2build2 [58.4 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 publicsuffix all 20211207.1025-1 [129 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy/main amd64 libbrotli1 amd64 1.0.9-2build6 [315 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules-db amd64 2.1.27+dfsg2-3ubuntu1.2 [20.5 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-2 amd64 2.1.27+dfsg2-3ubuntu1.2 [53.8 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-2.5-0 amd64 2.5.16+dfsg-0ubuntu0.22.04.2 [183 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build4 [58.2 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssh-4 amd64 0.9.6-2ubuntu0.22.04.3 [186 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.15 [289 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 curl amd64 7.81.0-1ubuntu1.15 [194 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-common all 2.5.16+dfsg-0ubuntu0.22.04.2 [15.5 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules amd64 2.1.27+dfsg2-3ubuntu1.2 [68.8 kB]
Fetched 2990 kB in 1s (2377 kB/s)            
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package openssl.
(Reading database ... 4393 files and directories currently installed.)
Preparing to unpack .../00-openssl_3.0.2-0ubuntu1.15_amd64.deb ...
Unpacking openssl (3.0.2-0ubuntu1.15) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../01-ca-certificates_20230311ubuntu0.22.04.1_all.deb ...
Unpacking ca-certificates (20230311ubuntu0.22.04.1) ...
Selecting previously unselected package libnghttp2-14:amd64.
Preparing to unpack .../02-libnghttp2-14_1.43.0-1ubuntu0.1_amd64.deb ...
Unpacking libnghttp2-14:amd64 (1.43.0-1ubuntu0.1) ...
Selecting previously unselected package libpsl5:amd64.
Preparing to unpack .../03-libpsl5_0.21.0-1.2build2_amd64.deb ...
Unpacking libpsl5:amd64 (0.21.0-1.2build2) ...
Selecting previously unselected package publicsuffix.
Preparing to unpack .../04-publicsuffix_20211207.1025-1_all.deb ...
Unpacking publicsuffix (20211207.1025-1) ...
Selecting previously unselected package libbrotli1:amd64.
Preparing to unpack .../05-libbrotli1_1.0.9-2build6_amd64.deb ...
Unpacking libbrotli1:amd64 (1.0.9-2build6) ...
Selecting previously unselected package libsasl2-modules-db:amd64.
Preparing to unpack .../06-libsasl2-modules-db_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libsasl2-2:amd64.
Preparing to unpack .../07-libsasl2-2_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libldap-2.5-0:amd64.
Preparing to unpack .../08-libldap-2.5-0_2.5.16+dfsg-0ubuntu0.22.04.2_amd64.deb ...
Unpacking libldap-2.5-0:amd64 (2.5.16+dfsg-0ubuntu0.22.04.2) ...
Selecting previously unselected package librtmp1:amd64.
Preparing to unpack .../09-librtmp1_2.4+20151223.gitfa8646d.1-2build4_amd64.deb ...
Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Selecting previously unselected package libssh-4:amd64.
Preparing to unpack .../10-libssh-4_0.9.6-2ubuntu0.22.04.3_amd64.deb ...
Unpacking libssh-4:amd64 (0.9.6-2ubuntu0.22.04.3) ...
Selecting previously unselected package libcurl4:amd64.
Preparing to unpack .../11-libcurl4_7.81.0-1ubuntu1.15_amd64.deb ...
Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.15) ...
Selecting previously unselected package curl.
Preparing to unpack .../12-curl_7.81.0-1ubuntu1.15_amd64.deb ...
Unpacking curl (7.81.0-1ubuntu1.15) ...
Selecting previously unselected package libldap-common.
Preparing to unpack .../13-libldap-common_2.5.16+dfsg-0ubuntu0.22.04.2_all.deb ...
Unpacking libldap-common (2.5.16+dfsg-0ubuntu0.22.04.2) ...
Selecting previously unselected package libsasl2-modules:amd64.
Preparing to unpack .../14-libsasl2-modules_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libpsl5:amd64 (0.21.0-1.2build2) ...
Setting up libbrotli1:amd64 (1.0.9-2build6) ...
Setting up libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libnghttp2-14:amd64 (1.43.0-1ubuntu0.1) ...
Setting up libldap-common (2.5.16+dfsg-0ubuntu0.22.04.2) ...
Setting up libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Setting up libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libssh-4:amd64 (0.9.6-2ubuntu0.22.04.3) ...
Setting up openssl (3.0.2-0ubuntu1.15) ...
Setting up publicsuffix (20211207.1025-1) ...
Setting up libldap-2.5-0:amd64 (2.5.16+dfsg-0ubuntu0.22.04.2) ...
Setting up ca-certificates (20230311ubuntu0.22.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 /usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 /u
sr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Updating certificates in /etc/ssl/certs...
137 added, 0 removed; done.
Setting up libcurl4:amd64 (7.81.0-1ubuntu1.15) ...
Setting up curl (7.81.0-1ubuntu1.15) ...
Processing triggers for libc-bin (2.35-0ubuntu3.6) ...
Processing triggers for ca-certificates (20230311ubuntu0.22.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
root@9e5bc78d2313:/# jobs
[1]+  Stopped                 sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
root@9e5bc78d2313:/# fg
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
Input website:
^C
```

Since the assignment gave heads up on missing deps I went ahead
- running simply interactively
- noted what was missing
- stopped the desired command
- installed `curl`
- continued the stopped job in foreground
- exited via `Control-C`

...hence skipping the need for an additional terminal.
