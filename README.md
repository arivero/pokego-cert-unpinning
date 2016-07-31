# pokego-cert-unpinning
Niantic implemented certificate pinning. To that we say good job, but unfortunately cert pinning makes our jobs harder. Introducing the pokemon go certificate unpinned app! Almost up to date, with other mild improvements for devs! 
That said, do not use this app unless you want to risk getting banned, do not use this unless you are using the script included in this repository (or a script that does what this does), or are looking to actually play the game.

THIS HAS ONLY BEEN TESTED WITH GOOGLE ACCOUNTS
It will probably not work for PTC accounts

# Changes made to the app: 
Set the debuggable flag to true in the android manifest 
Disabled all certificate checking by making the NianticTrustManager return null for the relevant functions

# If you want to use this app
uninstall the official app first. Then you can either download the app to your android and install it from there, or from a computer run 
adb install modified_pgo.apk

once the app is installed, make sure it is set up to use mitmproxy (use google if you don't know how)
then run mitmdump --host -s script.py and launch the app
I made this with python 2. If you have python 3 it will probably give you a syntax error. I'll fix this later, much like the rest of the problems
