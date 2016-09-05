#!/bin/bash

echo "Pulling apk from phone"
adb pull data/app/com.nianticlabs.pokemongo-1/base.apk /tmp/pokemon.apk

echo "Extracting APK"
apktool d /tmp/pokemon.apk -o /tmp/pokemon_disassembled

echo "Patching bytecode"
rm /tmp/pokemon_disassembled/smali/com/nianticlabs/nia/network/NianticTrustManager.smali
cp  NianticTrustManager.smali /tmp/pokemon_disassembled/smali/com/nianticlabs/nia/network/

echo "Recompiling APK"
apktool b /tmp/pokemon_disassembled -o /tmp/modified.apk

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore key.keystore /tmp/modified.apk alias_name #Comment out this line if you don't want it signed
mv /tmp/modified.apk .

