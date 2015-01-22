@echo off

rem this script generate font metric for ttf file

set JAVA_HOME=${JAVA_HOME}


if "%JAVA_HOME%" == "" goto error

set LOCALCLASSPATH=%LOCALCLASSPATH%;lib\xalan-2.7.0.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;lib\xercesImpl-2.7.1.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;lib\xml-apis-1.3.02.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;app\fop.jar

"%JAVA_HOME%\bin\java" -cp "%LOCALCLASSPATH%" org.apache.fop.fonts.apps.TTFReader %1 %2 %3 %4

goto end

:error

echo ERROR: JAVA_HOME not found in your environment.
echo Please, set the JAVA_HOME variable in your environment to match the
echo location of the Java Virtual Machine you want to use.

:end

rem set LOCALCLASSPATH=

