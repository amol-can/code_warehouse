# @Author Amol Patil
Get-ExecutionPolicy

#To set the class path source folder
$BO_JAVA_LIB="C:\Program Files (x86)\SAP BusinessObjects\SAP BusinessObjects Enterprise XI 4.0\java\lib"
Write-Output "==== BO_JAVA_LIB ====" $BO_JAVA_LIB

$JAVA_HOME=$Env:JAVA_HOME
Write-Output "==== JAVA_HOME ====" $JAVA_HOME

$CURRENT_DIR = Get-Location
Write-Output "==== CURRENT_DIR ====" $CURRENT_DIR

$_RUNJAVA="$JAVA_HOME\bin\java"
$_RUNJAVAC="$JAVA_HOME\bin\javac"
$_RUNJAR="$JAVA_HOME\bin\jar"

$CLASSPATH="$BO_JAVA_LIB\json-simple.jar;$BO_JAVA_LIB\bcm.jar;$BO_JAVA_LIB\biarengine.jar;$BO_JAVA_LIB\ceaspect.jar;$BO_JAVA_LIB\cecore.jar;$BO_JAVA_LIB\celib.jar;$BO_JAVA_LIB\ceplugins_core.jar;$BO_JAVA_LIB\cesession.jar;$BO_JAVA_LIB\corbaidl.jar;$BO_JAVA_LIB\ebus405.jar;$BO_JAVA_LIB\logging.jar;$BO_JAVA_LIB\TraceLog.jar;$BO_JAVA_LIB\external\activation.jar;$BO_JAVA_LIB\external\aspectjrt.jar;$BO_JAVA_LIB\external\axis2\1.6.2\axiom-api-1.2.13.jar;$BO_JAVA_LIB\external\axis2\1.6.2\axiom-impl-1.2.13.jar;$BO_JAVA_LIB\external\axis2\1.6.2\axis2-adb-1.6.2.jar;$BO_JAVA_LIB\external\axis2\1.6.2\axis2-kernel-1.6.2.jar;$BO_JAVA_LIB\external\axis2\1.6.2\axis2.saaj-1.6.2.jar;$BO_JAVA_LIB\external\certjFIPS.jar;$BO_JAVA_LIB\external\com.sap.js.passport.api.jar;$BO_JAVA_LIB\external\commons-logging-1.1.1.jar;$BO_JAVA_LIB\external\cryptojFIPS.jar;$BO_JAVA_LIB\external\derby.jar;$BO_JAVA_LIB\external\freessl201.jar;$BO_JAVA_LIB\external\log4j.jar;$BO_JAVA_LIB\external\ssljFIPS;$BO_JAVA_LIB\external\dom4j-1.6.1.jar;$BO_JAVA_LIB\external\apache_poi\poi-3.10.1-20140818.jar;$BO_JAVA_LIB\external\apache_poi\poi-excelant-3.10.1-20140818.jar;$BO_JAVA_LIB\external\apache_poi\poi-ooxml-3.10.1-20140818.jar;$BO_JAVA_LIB\external\apache_poi\poi-ooxml-schemas-3.10.1-20140818.jar;$BO_JAVA_LIB\external\apache_poi\poi-scratchpad-3.10.1-20140818.jar;$BO_JAVA_LIB\external\apache_poi\xmlbeans-2.6.0.jar;"

Write-Output "==== CLASSPATH ====" $CLASSPATH

Write-Output "==== COMPILING THE APP ===="
& "$_RUNJAVAC" -cp "$CLASSPATH" App.java
#Write-Output "$_RUNJAVAC App.java"

Write-Output "==== RUNNING JAVA APP"
& "$_RUNJAVA" -cp "$CLASSPATH" App
#Write-Output "$_RUNJAVA App"

Read-Host -Prompt "Press Enter to continue"



