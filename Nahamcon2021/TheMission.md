# Constellations

Challenges unlocked by submitting flag.

Overview

![Overview](img/OSINT_mermaid.png)

- [Constellations](#constellations)
  - [The Mission](#the-mission)
    - [Bionic](#bionic)
    - [Gus](#gus)
    - [Hercules](#hercules)
    - [Meet The Team](#meet-the-team)
    - [Lyra](#lyra)
    - [Hydraulic](#hydraulic)

## [The Mission](https://ctf.nahamcon.com/mission)

Flag on html source
>Ctrl+u
>
>Ctrl+f "flag{"

``flag{48e117a1464c3202714dc9a350533a59}``

### Bionic

<https://constellations.page/>

Source index has the following link to twitter witch have posted a flag

```HTML
https://twitter.com/C0NST3LLAT10NS
flag{e483bffafbb0db5eabc121846b455bc7}
```

link <https://github.com/constellations-git>

### Gus

GitHub user gusrody is listed as member on constellations repo

<https://github.com/gusrodry/development/blob/master/config/.ssh/flag.txt> - `` flag{84d5cc7e162895fa0a5834f1efdd0b32} ``

.ssh folder has keys

Is followed by HerculesScox

### Hercules

<https://github.com/HerculesScox/maintenance/blob/main/connect.sh> - `` flag{5bf9da15002d7ea53cb487f31781ce47} ``

Has hard corded credentials

robots.txt

```txt
Disallow: /meet-the-team.html
```

 ``flag{33b5240485dda77430d3de22996297a1}``

Enumerating root

Tool: dirbuster

Finding: .git/HEAD

.git/config

```txt
[user]
 name = Leo Rison
 email = leo.rison@constellations.page
```

How to leverage the exposed git?

[Google-fu](https://medium.com/swlh/hacking-git-directories-e0e60fa79a36)

[Google-fu](https://github.com/internetwache/GitTools)

### Meet The Team

Restored meet-the-team.html has the flag and lists PII.

`` flag{4063962f3a52f923ddb4411c139dd24c} ``

### Lyra

<https://twitter.com/LyraPatte>

> IDOR
>
><https://constellations.page/constellations-documents/1/>
>
><https://constellations.page/constellations-documents/2/>

<https://constellations.page/constellations-documents/5/>

Has the flag and list of users, passwords.

`` flag{bd869e6193c27308d2fd3ad4b427e8c3} ``

### Hydraulic

Tool: Hydra

[users](users)

[passwords](passwords)

```Bash
[31975][ssh] host: challenge.nahamcon.com   login: pavo   password: starsinthesky
```
