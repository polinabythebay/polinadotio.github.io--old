---
title: A short guide to email spoofing
date: 2014-03-15
tags:
---

This is a fun trick I learned that uses a few basic networking concepts. I didn't realize how easy it was to send spoof email via command line. Here's how:

####Basic idea:

Establish a TCP connection to a mail server and use SMTP commands to send email from "anyone" to "anyone". :) You'll see what I mean. 

####Concepts:

TCP, or the Transmission Control Protocol, is a transport layer protocol used for establishing logical communication between applications and different hosts that are not physically connected to one another. Applications can be ones running on your computer (a local host) or the internet (Gmail for example). In this case, I am using TCP to establish a connection from my linux account on a college server to a Google mail server. SMTP is the Simple Mail Transfer Protocol that is the de facto standard for sending email across the internet. It's been around since 1982 and is very minimal-- to this day it will only support 7 bit ASCII characters, which amuses me when I think of multimedia email attachments these days. In this example I'm going to use telnet to manually send mail through an SMTP mail server. 

####Step 1: Establish a TCP Connection

In order to send SMTP commands to a mail server you need to know the host name of the mail server for your domain. My domain is wellesley.edu, so I'm going to first query the DNS for the MX record that holds information about my mail domain. 

SSH into my linux account:
 
<pre><code> 
$ ssh -Y psoshnin@cs.wellesley.edu
psoshnin@cs.wellesley.edu's password:
[psoshnin@tempest~] 
</pre></code>

Query DNS for the mail servers that deliver mail to wellesley.edu:

<pre><code>
[psoshnin@tempest~] nslookup -type=MX wellesley.edu
Server: 149.130.10.16
Address: 149.130.10.16#53
wellesley.edu mail exchanger = 
5 ALT2.ASPMX.L.GOOGLE.COM.
wellesley.edu mail exchanger = 
10 ASPMX2.GOOGLEMAIL.COM.
wellesley.edu mail exchanger = 
10 ASPMX3.GOOGLEMAIL.COM.
wellesley.edu mail exchanger = 
1 ASPMX.L.GOOGLE.COM.
wellesley.edu mail exchanger = 
5 ALT1.ASPMX.L.GOOGLE.COM.
[psoshnin@tempest~]
</pre></code>

From here you can see that Wellesley has 5 different mail servers through Google mail services. We need to pick one of them-- let's pick ALT2.ASPMX.L.GOOGLE.COM. We use telnet to establish the connection and use port 25 because it's a TCP connection:

<pre><code>
[psoshnin@tempest~] telnet ALT2.ASPMX.L.GOOGLE.COM 25
Trying 173.194.65.27...
Connected to ALT2.ASPMX.L.GOOGLE.COM.
Escape character is '^]'.
220 mx.google.com ESMTP u6si42550271een.213 -gsmtp
</pre></code>

####Step two: Use SMTP commands to send an email

Yay we're connected! Now here's where the fun begins. Let's enter in some commands to send a message. A basic message for SMTP needs the following:

<pre><code>
MAIL FROM: Sender <sending@email.address>
RCPT TO: Receiver <receiving@email.address>
DATA
FROM: <from@an.address>
T0: <to@an.address>
SUBJECT: email subject
Body of email
.
QUIT
</pre></code>

Note that there's a period [.] at the end. You will need that. Let's try this!

<pre><code>
[psoshnin@tempest~] telnet ALT2.ASPMX.L.GOOGLE.COM 25
Trying 173.194.65.27...
Connected to ALT2.ASPMX.L.GOOGLE.COM.
Escape character is '^]'.
220 mx.google.com ESMTP u6si42550271een.213 -gsmtp
HELO psoshnin@wellesley.edu
250 mx.google.com at your service
MAIL FROM: <god@heaven.onearth>
250 2.1.0 OK u6si4550271een.213 -gsmtp
RCPT TO: <me@polina.io>
250 2.1.0 OK u6si42250271een.213 -gsmtp
DATA
350 Go ahead u6si42550271een.213 -gsmtp
FROM: God <god@heaven.onearth>
TO: Earthling <why@hello.earthling>
SUBJECT: Hello world!
Hello world! I should visit more.
-God
.
250 2.0.0 OK 1392756346 u6si42550271een.213 -gsmtp
QUIT
221 2.0.0 closing connection u6si42550271een.213 -gsmtp
Connection closed by foreign host.
[psoshnin@tempest~] 
</pre></code>

And there you have it. Note: you might need to check your spam folder. 

<img src="/img/articles/helloworld.png" alt="" style="width: 100%;max-height: 100%">