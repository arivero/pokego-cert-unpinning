# pokego-cert-unpinning
Niantic implemented certificate pininng, which means you can't mitm your game. I don't like that, so I have decided to undo this security feature. 

# Changes made to the app
Set the debuggable flag to true in the android manifest and disabled all certificate checking by making the NianticTrustManager return null for the relevant functions

# If you want to use this app
uninstall the official app first. Then you can either download the app to your android and install it from there, or from a computer run 
adb install modified_pgo.apk
If you are using PTC, you should be good to go. If you're using google to login, you need to run the script with mitmproxy or mitmdump.


