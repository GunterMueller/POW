@ECHO OFF

REM ---------------------------------------------------------------------------
REM Batchdatei zum Erstellen des Laufzeitsystems (ohne Garbage Collector)
REM ---------------------------------------------------------------------------
REM Ausgangsdateien:
REM  RtsOberon.OBJ ... Laufzeitsystem f�r Oberon-2 Programme
REM  String.OBJ ...... Modul f�r Zeichenketten, wird von RtsOberon ben�tigt
REM  Win32.OBJ ....... Win32 API Definitionen f�r RtsOberon
REM Zieldateien:
REM  RTS32S.LIB ...... Statische Bibliothek ohne Garbage Collector
REM ---------------------------------------------------------------------------

REM -- Standardeinstellungen --
SET LIBCMD=C:\MSDEV\BIN\LIB

REM -- Pr�fen, ob Ausgangsdateien vorhanden sind --
IF EXIST RtsOberon.obj GOTO LabelW1
ECHO.
ECHO Die Datei RtsOberon.obj konnte nicht gefunden werden.
GOTO LabelExit
:LabelW1

REM -- Bibliotheken ohne Garbage Collector zusammenbauen --
%LIBCMD% /OUT:RTS32S.LIB RtsOberon.obj String.obj Win32.obj

:LabelExit
