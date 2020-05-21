---
title: "Willow"
date: 2020-05-14T07:45:19+02:00
categories:
- Writeups
tags:
- tryhackme
- nfs
- cracking
- steganography
- rsa
---

![Willow](/images/willow/willow.png)

This was a very fun room on [Tryhackme](https://tryhackme.com/room/willow) that required a wide variety of skills ranging from cryptography to steganography.

## Enumeration

As always we start with enumeration of the open ports by running `nmap -sV -sC -vv | tee nmap.txt`. This gave us the following output.

![nmap output](/images/willow/nmap.png)

## NFS

We see that the port `2049` is open which is running `nfs`. We can use a tool called `showmount` to enumerate mountable shares by issuing the command `showmount -e $IP`. This returns with `/var/failsafe *` meaning that we should be able to mount this directory.

Mounting in Linux can be done with `mount -t nfs $IP:/var/failsafe <destination folder>`. In this case we need to create a directory where we will mount such as `/tmp/willow`. We can now go to this mounted directory and find a file called `rsa_keys` with the content:

```
Public Key Pair: (23, 37627)
Private Key Pair: (<REDACTED>, 37627)
```

When we are done we can unmount by running `umount /tmp/willow`.

## Cryptography

Moving on we open a web-browser and open up the page that is hosted on port 80. This returns a bunch of characters.

![Web-site content](/images/willow/page.png)

Upon closer inspection it seems to be hex encoded. This is a task for one of my faviorite online tools [CyberChef](https://gchq.github.io/CyberChef/). When we use the *From Hex* recipe we get the following output:

![CyberChef](/images/willow/cyberchef.png)

It looks like we have found an RSA key, but it seems to be encrypted. Remember the `rsa_keys` that we found in the `nfs` share? We could use those numbers to decrypt the ssh-key.

This is a textbook example of RSA encryption and can be decrypted with only a few lines of code. Let's first remember how RSA works:

$$e=c^d \mod n$$
$$d=c^e \mod n$$

where:

* $e$ is the public key exponent
* $d$ is the private key exponent
* $c$ is the plaintext or ciphertext
* $n$ is the modulus

With the following Pythoncode the RSA cipher could be decrypted to an SSH-key.

```python
n = 37627
d = <REDACTED>
plaintext = ""
with open("input.txt", "r") as f:
    for line in f:
        x = line.split()
        for c in x:
            plaintext = plaintext + chr(int(c)**d%n)
print(plaintext)
```

## Cracking

It seems like the SSH-key is password-protected. Let's use $john$ to crack the password. We can use the john module `ssh2john` to convert the key to a format that john can use:

`python /usr/share/john/ssh2john.py key.txt > hash`

Next we run john with a wordlist:

`john --wordlist=/usr/share/wordlists/rockyou.txt hash`

Pretty fast we have a password that we can use to login with the SSH-key.

## User Flag

Before we can use the SSH-key we must change the permissions `chmod 600 id_rsa`. Next we can login as the user `willow` with `ssh -i id_rsa willow@$IP`.

There is a file called `user.jpg` that we can download to our computer with `scp -i id_rsa willow@$IP:~/user.jpg`. Opening the file `eog user.jpg` reveals the flag.

![Flag](/images/willow/flag.png)

## Root Flag

The first thing we can do is to run `sudo -l` to find out that we can run `/bin/mount /dev/*` without a password. When we check the directory there is a unmounted directory `hidden_backup` which looks interesting.

Let's first create a directory where we can mount `mkdir -p /tmp/directory`
We mount using `sudo /bin/mount /dev/hidden_backup /tmp/directory`

In the mount we find `creds.txt`:

```
willow: <REDACTED>
root: <REDACTED>
```

Login as root `su root` where we find a file `root.txt` with the following text:

```
This would be too easy, don't you think? I actually gave you the root flag some time ago. You've got my password now -- go find your flag!
```

Let's check if there is anything hidden in the `user.jpg` file that we got for the user flag. Using `steghide` we can extract information with:

`steghide extract -sf user.jpg`

After inputing the root password we get the root flag!
