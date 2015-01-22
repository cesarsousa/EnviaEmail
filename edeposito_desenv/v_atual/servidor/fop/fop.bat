@ECHO OFF


set JAVA_HOME=#INSTDIR#\JRE_1_6_0_22

if "%JAVA_HOME%" == "" goto error


set LOCALCLASSPATH=#INSTDIR#\fop\app\fop.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\avalon-framework-cvs-20020315.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-awt-util-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-bridge-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-ext-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-gvt-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-svg-dom-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-svggen-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\batik-util-1.5.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\itext-2.1.7.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\jai_codec-1.1.3.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\jai_core-1.1.3.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\jeuclid-2.0.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\endorsed\xalan-2.7.0.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\endorsed\xercesImpl-2.7.1.jar
set LOCALCLASSPATH=%LOCALCLASSPATH%;#INSTDIR#\fop\lib\endorsed\xml-apis-1.3.02.jar



"%JAVA_HOME%\bin\java" -cp "%LOCALCLASSPATH%" org.apache.fop.apps.Fop %*


goto end

:error

echo ERROR: JAVA_HOME not found in your environment.
echo Please, set the JAVA_HOME variable in your environment to match the
echo location of the Java Virtual Machine you want to use.

:end
