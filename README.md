# local-tts-anounce
Play some text to your speakers when someone connects to your BBS - only works if BBS is on your main pc and not headless.

## Pre-requisites
```
$ sudo apt install mpg321
$ sudo pip install gTTS
```

## Suggested use
```
 ╔════════════════════ Command Options ════════════════════╗
 ║                                                         ║
 ║ Command    │ (DD) Exec external program                 ║
 ║ Data       │ /path/to/local-tts-anounce.sh %U           ║
 ║ Access     │ !OI                                        ║
 ║ Grid Event │ Selected                                   ║
 ║                                                         ║
 ╚═════════════════════════════════════════════════════════╝
 ```

if you add `-m` as a second argument it will play a modem connecting sound prior to reading out the caller info
 
#### Thanks to
warmfuzzy for asking me how to do this.
