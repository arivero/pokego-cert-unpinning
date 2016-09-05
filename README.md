# pokego-cert-unpinning
Niantic implemented certificate pininng, which means you can't mitm your game. I don't like that, so I changed it. 

# If you want to use this app
Either install the pokemon.apk (it may not be updated though) OR install the official .apk, and run this script on a linux box. Requires apktool and adb. 

If you aren't rooted, you must have a keyfile named key.keystore in the directory (none provided because security) and jarsigner ( I believe it's included with apktool, but not 100% sure)
Basically, it just copies a modified version of the trust manager to the app and recompiles it.

Once the apk is generated and optionally signed, uninstall the app from your phone and run
adb install modified.apk

If you are using PTC, you should be good to go at this point. If you're using google to login, you need to run the script with mitmproxy or mitmdump configured or you will have problems authenticating with google. Otherwise, you will need to either root your phone, or find the code that does google auth and patch that to send the original apps signature.


