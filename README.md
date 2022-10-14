# GWBASIC-GAME

## ABOUT THIS GAME

This is a game I created for fun to participate in the RETRO GAME DEV contest organized by ESPACIO TEC an argentinian digital archeology museum.

- [About the contest](https://retrogamedev2022.espaciotec.com.ar/) 
- [About ESPACIO TEC](https://espaciotec.com.ar/)

## IMPORTANT!

If you want to open `TA.BAS` in a text editor do not change it's encoding when doing so, otherwise spanish special characters will be broken when you execute it using DOSBOX. In VSCODE the correct encoding is `cp850`.

## HOW TO PLAY THIS GAME

In order to play this game you have to download an install DOSBOX for MS-DOS emulation.

You can [get it here](https://www.dosbox.com/download.php?main=1)

## DOSBOX CONFIG

Once you have DOSBOX installed you have to follow this steps:

1 - Clone this repo and move GWBASIC.EXE into the root folder

2 - Open DOSBOX and set the key binding to LATAM spanish. This game is in spanish so encoding of MS-DOS must be configured.

```
keyb la
```
3 - Mount the folder that contains the game and GWBASIC.EXE as C:

```
mount c C:\GWBASIC
```
4 - Change drives, to the previously mounted C: drive

```
C:
```
- 5 Run the game and enjoy!

```
GWBASIC TA.BAS
```



