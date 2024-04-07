:://---------------------------------------------------------------------------------------------------------------------------------------------\\::
::                                                                        INFO                                                                     ::
::\\---------------------------------------------------------------------------------------------------------------------------------------------//::
:: Name: INIZIO V4.0                                                                                                                               ::
:: Info: BATCH file for organize /// Last Update 07/04/23                                                                                          ::
:: Autor: Adriel Kevin Galati                                                                                                                      ::
:: For: SP Productions                                                                                                                             ::
:: Last Test: Windows 10 PRO - Version: 21H1 - Compilation: 19044.1387                                                                             ::
:: Code: UTF-8                                                                                                                                     ::
::                                                                                                                                                 ::
:://---------------------------------------------------------------------------------------------------------------------------------------------\\::
::                                                                                                                                                 ::
::                                            -"Cree en tus sueños, superate a ti mismo y mejora el mundo."                                        ::
::                                                  -"Somos lo que nunca creyeron que ibamos a ser."                                               ::
::                                                                                                                                                 ::
::                                                          Copyright (c) 2024 SP PRODUCTIONS                                                      ::
::\\---------------------------------------------------------------------------------------------------------------------------------------------//::
:://///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////::






:://---------------------------------------------------------------------------------------------------------------------------------------------\\::
::                                                           LLAMADO A CODIGO DE INIZIO                                                            ::
::\\---------------------------------------------------------------------------------------------------------------------------------------------//::

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::// DEPENDENCIAS EN COMMANDER - INICIO-\\\ ◄◄◄◄ 00
@echo off

::// FINALIZACION DE SONIDO TECLADO- INICIO-\\\ ◄◄◄◄ 00
taskkill/im SPPClicker.exe /f >nul 2>nul & verify >nul

::// FINALIZACION DE SONIDOS VARIOS- INICIO-\\\ ◄◄◄◄ 00
taskkill/im fmedia.exe /f >nul 2>nul & verify >nul

::Forzar la importacion de la configuracion de sppcmd para sobrescribirla. Reemplaza con un respaldo la actual en la carpeta default.!!
:: Configuracion ConEmuSpp
copy /Y "INIZIO\00-Essentials\00-Programs\00-sppcmd\user-ConEmu.xml" "INIZIO\00-Essentials\00-Programs\00-sppcmd\config" >nul
:: Configuracion ConEmu Base
copy /Y "INIZIO\00-Essentials\00-Programs\00-sppcmd\ConEmu.xml" "INIZIO\00-Essentials\00-Programs\00-sppcmd\vendor\conemu-maximus5" >nul

::Forzar nuevamente la importacion de la configuracion de sppcmd para sobrescribirla. Reemplaza con un segundo respaldo la actual en la carpeta default.!!
:: Configuracion ConEmuSpp
copy /Y "INIZIO\00-Essentials\00-Programs\00-sppcmd\backupconfig\user-ConEmu.xml" "INIZIO\00-Essentials\00-Programs\00-sppcmd\config" >nul
:: Configuracion ConEmu Base
copy /Y "INIZIO\00-Essentials\00-Programs\00-sppcmd\backupconfig\ConEmu.xml" "INIZIO\00-Essentials\00-Programs\00-sppcmd\vendor\conemu-maximus5" >nul

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::// INVOCACION DE Stop_Protect - INICIO-\\\ ◄◄◄◄ 00                       <------ "Stop_Protect.bat" execute "Stop_Protect.ps1" // CERRAR LOS PROGRAMAS EN SEGUNDO PLANO QUE EJECUTA LA TERMINAL CUANDO LA TERMINAL PRINCIPAL SE CIERRE DE FORMA INESPERADA O FORZOSAMENTE. (SPPClicker.exe y fmedia.exe)
start /D "INIZIO\00-Essentials\00-Programs\03-Sound\" /min Stop_Protect.bat > nul
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::// INVOCACION EN COMMANDER - INICIO-\\\ ◄◄◄◄ 00                          <------ "/X" ESTABLECE LA RUTA DONDE SE ENCUENTRA EL .BAT COMO EL ESPACIO DE TRABAJO DE SPPCMD.EXE. Caso contrario no funcionaria correctamente el script base.
"INIZIO\00-Essentials\00-Programs\00-sppcmd\SPPCMD.exe" /x "/cmd \"INIZIO\00-Essentials\00-Programs\01-Inizio\inizio.bat"

:://---------------------------------------------------------------------------------------------------------------------------------------------\\::
::                                                                       FINAL                                                                     ::
::\\---------------------------------------------------------------------------------------------------------------------------------------------//::