- [OSINT](#osint)
  - [#NahamCon2021](#nahamcon2021)
  - [Read the rules](#read-the-rules)
  - [Hackerone](#hackerone)
  - [Discord Nahansec](#discord-nahansec)
  - [Merch Store](#merch-store)
  - [INE](#ine)
  - [HTB](#htb)
  - [Googgle Play](#googgle-play)
- [Chalenges](#chalenges)
  - [esab64](#esab64)
  - [Shoelaces](#shoelaces)
  - [Pollex](#pollex)
  - [buzz](#buzz)
  - [Veebee](#veebee)

## OSINT
### #NahamCon2021
Twitter (https://twitter.com/NahamSec)
`` flag{e36bc5a67dd2fe5f33b62123f78fbcef} ``

### Read the rules
https://ctf.nahamcon.com/rules
HTML Source `` flag{90bc54705794a62015369fd8e86e557b} ``

### Hackerone
Discord
[announcements](https://discord.com/channels/514337135491416065/534475139602055168)

``Synt{rr907q188039nr543o81sq237o6o6q0o}``

[CyberChef](https://gchq.github.io/CyberChef/)
Recipe:
rot13
`` Flag{ee907d188039ae543b81fd237b6b6d0b} ``

### Discord Nahansec
Channel sub-title is the flag.
* UHC-BR
* Red Team Village
* Live Recon Village
* IoT Village
* INE Career Corner
* HTB Village
### Merch Store


### INE
https://checkout.ine.com/starter-pass

Page inspection = on the page theres this base64 string

```Bash
echo "ZmxhZ3syOWZhMzA1YWFmNWUwMWU5ZWRjZjAxNDJlNGRkY2RiOX0=" | base64 -d
```

`` flag{29fa305aaf5e01e9edcf0142e4ddcdb9} ``

### HTB
Dropped in parts over twitter and discord
https://twitter.com/hackthebox_eu/status/1371146586391261189
https://discord.com/channels/473760315293696010/477042310467813376

 ``flag{57a3ca8be987fb8b7ea0a72e1124e302} ``

 ### Googgle Play
Hint: https://twitter.com/jon_bottarini/status/1370926690612826112

https://static.googleusercontent.com/media/www.google.com/pt-BR//about/appsecurity/play-rewards/Android_app_vulnerability_classes.pdf

search for flag{ camouflage font
 `` flag{a0a6cb3b4bc98bf2a34b7aed76aebf53} ``

## Chalenges
### esab64
```Bash
$cat esab64
mxWYntnZiVjMxEjY0kDOhZWZ4cjYxIGZwQmY2ATMxEzNlFjNl13X
```
[Cyberchef](https://gchq.github.io/CyberChef/)
Recipe:
1. Reverse
2. From Base64
3. Reverse

### Shoelaces
```Bash
$strings shoelaces.jpg
```
`` flag{137288e960a3ae9b148e8a7db16a69b0} ``

### Pollex
More than one jpg file concatenated to identify used binwalk and to remove the second file used dd.

```Bash
$ binwalk pollex.jpg 

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             JPEG image data, JFIF standard 1.01
30            0x1E            TIFF image data, little-endian offset of first image directory: 8
334           0x14E           JPEG image data, JFIF standard 1.01
364           0x16C           TIFF image data, little-endian offset of first image directory: 8
848           0x350           JPEG image data, JFIF standard 1.01
6731          0x1A4B          Copyright string: "CopyrightOwner> <rdf:Seq/> </plus:CopyrightOwner> <plus:Licensor> <rdf:Seq/> </plus:Licensor> <dc:creator> <rdf:Seq> <rdf:li>Ste"
6765          0x1A6D          Copyright string: "CopyrightOwner> <plus:Licensor> <rdf:Seq/> </plus:Licensor> <dc:creator> <rdf:Seq> <rdf:li>Stevanovic Igor</rdf:li> </rdf:Seq> <"
```
```Bash
$ dd if=pollex.jpg bs=512k | { dd bs=334 count=1 of=/dev/null; dd bs=512k of=trimmed_pollex.jpg; }
```
A flag está escrita na imagem trimmed_pollex.jpg
`` flag{65c34alec121a286600ddd48fe36bc00} ``


### buzz
```Bash
$ file buzz

$ gunzip buzz
```
 ``flag{b3a33db7ba04c4c9052ea06d9ff17869} ``

### Veebee
 
 To decode the VBE script have tried:
 https://didierstevens.com/files/software/decode-vbe_V0_0_1.zip

 But didn't work
 Google-fu find the tool
 https://github.com/JohnHammond/vbe-decoder/
 
 `` flag{f805593d933f5433f2a04f082f400d8c} ``
