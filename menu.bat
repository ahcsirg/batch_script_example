@echo off
title Menu Principal - Ejemplo de Batch Script

:inicio
cls
echo =====================================================================================================
echo    						MENU PRINCIPAL
echo =====================================================================================================
echo.
echo 1. Opcion 1 - Mostrar Fecha
echo 2. Opcion 2 - Mostrar Hora
echo 3. Opcion 3 - Crear un archivo de texto
echo 4. Salir
echo.
set /p opcion=Seleccione una opcion (1-4): 

if "%opcion%"=="1" goto fecha
if "%opcion%"=="2" goto hora
if "%opcion%"=="3" goto crear_archivo
if "%opcion%"=="4" goto salir

echo Opcion no valida, por favor seleccione una opcion del 1 al 4.
pause
goto inicio

:fecha
echo.
echo La fecha actual es:
date /T
pause
goto inicio

:hora
echo.
echo La hora actual es:
time /T
pause
goto inicio

:crear_archivo
echo.
set /p nombreArchivo=Ingrese el nombre del archivo (sin extension): 
echo Este es un archivo de ejemplo > %nombreArchivo%.txt
echo Archivo %nombreArchivo%.txt creado exitosamente.
pause
goto inicio

:salir
echo Saliendo del programa...
pause
exit
