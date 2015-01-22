@ECHO OFF

set JAVA_HOME=#INSTDIR#\JRE_1_6_0_22

if "%JAVA_HOME%" == "" goto error

set LOCALCLASSPATH=#INSTDIR#\fop\lib\endorsed\xml-apis-1.3.02.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\endorsed\xercesImpl-2.7.1.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\endorsed\xalan-2.7.0.jar
"%JAVA_HOME%\bin\java" -cp "%LOCALCLASSPATH%" org.apache.xalan.xslt.Process %1 %2 %3 %4 %5 %6 %7 %8

goto end

:error

echo ERROR: JAVA_HOME not found in your environment.
echo Please, set the JAVA_HOME variable in your environment to match the
echo location of the Java Virtual Machine you want to use.

:end
