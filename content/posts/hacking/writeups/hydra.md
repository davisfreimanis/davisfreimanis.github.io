---
title: "Hydra"
date: 2020-05-19T20:07:26+02:00
categories:
- Writeups
tags:
- tryhackme
- cracking
- tool
---

![Hydra](/images/hydra/hydra.png)

This room can be found at [Tryhackme](https://tryhackme.com/room/hydra) and is about password cracking using the powerfull tool hydra. The room has two tasks where the first one is to crack a password using a regular login form and the second task is to brute force an SSH password.

## HTTP Post

![Hydra Login](/images/hydra/login.png)

The first task is to login as molly using this HTTP form. We can do this with Hydra, but the syntax is hard to remember.

| Option | Description         |
|--------|---------------------|
| -l     | Username to use     |
| -P     | Password list       |
| -t     | Number of threads   |
| -V     | Print every attempt |
| http-post-form    | Use http-post     |

```
hydra -l molly -P /usr/share/wordlists/users/10000_common_passwords $IP http-post-form "/login:username=^USER^&password=^PASS^:F=Your username or password is incorrect." -V
```

In my oppinion the hardest thing to remember is the parameters given to the `http-post-form` service so lets look closer at the syntax for it.

`/login` is the path to the HTTP form

`username=^USER^&password=^PASS^` corresponds to the form fields `username` and `password`

`F=Your username or password is incorrect.` is the message that gets returned when authentication fails.

## SSH

For `ssh` the syntax is much easier to remember. The options that I used for this task:

| Option | Description         |
|--------|---------------------|
| -l     | Username to use     |
| -P     | Password list       |
| -t     | Number of threads   |
| -V     | Print every attempt |
| ssh    | Use ssh service     |

```
hydra -l molly -P /usr/share/wordlists/rockyou.txt $IP -t 10 ssh -V
```
