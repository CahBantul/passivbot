    @echo off
setlocal enabledelayedexpansion enableextensions

tskill python

set i=-1

for %%f in (MATICUSDT,GMTUSDT,CHZUSDT,TRBUSDT,SANDUSDT) do (

 set /a i=!i!+1
 set coin[!i!]=%%f
)
set lastindex=!i!

for /L %%f in (0,1,!lastindex!) do ( 
  start  python passivbot.py binance_01 !coin[%%f]! configs/live/!coin[%%f]!.json
)




exit
