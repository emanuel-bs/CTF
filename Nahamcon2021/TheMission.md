- [The Mission](#the-mission)
	- [Bionic](#bionic)
	- [Gus](#gus)
	- [Hercules](#hercules)
	- [Meet The Team](#meet-the-team)
	- [Lyra](#lyra)
	- [Hydraulic](#hydraulic)

### Constellations

New challenges unlocked by submitting flag.

:::mermaid
stateDiagram-v2
mtt: "Meet The Team"
flag_unk: "twitter.com/C0NST3LLAT10NS"
[*] --> Bionic
Bionic --> flag_unk : not submitted
Bionic --> mtt
Bionic --> Gus
Hercules --> Gus: Follow
Bionic --> Hercules
Bionic --> Lyra
Lyra --> Hydraulic
:::

## [The Mission](https://ctf.nahamcon.com/mission)
Flag on the html source
>Ctrl+u

>Ctrl+f "flag{"

``flag{48e117a1464c3202714dc9a350533a59}``

### Bionic
* https://constellations.page/

Source index has the following link to twitter witch have posted a flag
```
https://twitter.com/C0NST3LLAT10NS
flag{e483bffafbb0db5eabc121846b455bc7}
```
link https://github.com/constellations-git

### Gus
Github user gusrody is listed as member on constellations repo

https://github.com/gusrodry/development/blob/master/config/.ssh/flag.txt - `` flag{84d5cc7e162895fa0a5834f1efdd0b32} ``

.ssh folder has keys

Is followed by HerculesScox

### Hercules
https://github.com/HerculesScox/maintenance/blob/main/connect.sh - `` flag{5bf9da15002d7ea53cb487f31781ce47} ``

Has hard corded credentials

* robots.txt

```
Disallow: /meet-the-team.html
```
 ``flag{33b5240485dda77430d3de22996297a1}``


Enumerating root

Tool: dirbuster

Finding: .git/HEAD


.git/config 
```
[user]
	name = Leo Rison
	email = leo.rison@constellations.page
```
[Google-fu](https://medium.com/swlh/hacking-git-directories-e0e60fa79a36)

[Google-fu](https://github.com/internetwache/GitTools)

### Meet The Team
Restored meet-the-team.html has:
`` flag{4063962f3a52f923ddb4411c139dd24c} ``

and lists PII

### Lyra
https://twitter.com/LyraPatte

> IDOR
> 
>https://constellations.page/constellations-documents/1/
https://constellations.page/constellations-documents/2/

https://constellations.page/constellations-documents/5/
List flag, users and passwords

`` flag{bd869e6193c27308d2fd3ad4b427e8c3} ``

### Hydraulic
Tentativa de acesso usando hydra

[users](users)

[passwords](passwords)

```Bash
[31975][ssh] host: challenge.nahamcon.com   login: pavo   password: starsinthesky
```