#!/bin/sh

export steamlib="/media/SteamLibrary"
export cscfgdir="${steamlib}/steamapps/common/Counter-Strike Global Offensive/game/csgo/cfg"
cp -p ./cfg/*.cfg "${cscfgdir}"
