@echo off
for %%i IN (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F) 
for %%j letra in (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F)
DO (COLOR %%fondo%%letra  &&echo miau miau && pause )

::aqui cada vez que pulses va ppasar por los colores de la consola 
::y la letra 
:: las variables tienen que estar cabiadas 
::`por cada cambio de fondo se cambiara todas la veces las lestras

