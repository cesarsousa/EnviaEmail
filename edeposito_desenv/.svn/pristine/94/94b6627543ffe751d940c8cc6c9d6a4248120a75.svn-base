@echo off
if "%1"=="" goto erro
if "%2"=="" goto erro
if not exist "%1" goto erro
if not exist "%2" goto erro

set plugin=%1
set pastaxml=%2
for /f "tokens=1,2 delims==" %%a in (%plugin%) do (
    if %%a==TemplateType set template=%%b
    if %%a==IPAddress set ip=%%b
    if %%a==CorbaPort set porta=%%b
    if %%a==Localize set localize=%%b
)


CLIENT.EXE "GUIEngine=%template%||ORBBINDADDR=inet:%ip%:%porta%" "folderID=50003||demo=0||mode=-iff||language=pt||formid=-1||referencenumber=%3||accessrights=hi||ifffile=%pastaxml%||inifile=%plugin%||localize=%localize%||formtype=1||user=10001"

:concluida
echo.
echo concluido.
goto fim

:erro 
echo.
echo  Uso: Importar [plugin.conf] [pasta xml] [codigo de referencia]
echo.
echo. Parametro invalido.
echo.

:fim
echo.
