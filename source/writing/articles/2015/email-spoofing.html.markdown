---
title: A short guide to email spoofing
date: 2015-09-06
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
 
<script src="https://gist.github.com/polinadotio/2eeb5ddf1bd29755f25f.js"></script>

Query DNS for the mail servers that deliver mail to wellesley.edu:

<script src="https://gist.github.com/polinadotio/61f0ac58a8feec0336e5.js"></script>

From here you can see that Wellesley has 5 different mail servers through Google mail services. We need to pick one of them-- let's pick ALT2.ASPMX.L.GOOGLE.COM. We use telnet to establish the connection and use port 25 because it's a TCP connection:

<script src="https://gist.github.com/polinadotio/c6282f4eb5ad33adcb84.js"></script>

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

<script src="https://gist.github.com/polinadotio/5c358ae7a543c019b447.js"></script>

And there you have it. Note: you might need to check your spam folder. 

<img src="/img/articles/helloworld.png" alt="" style="width: 120%;max-height: 120%">