@echo off
echo ====================================================
echo JAVA_HOME: %JAVA_HOME%
echo JAVA_OPT : %JAVA_OPT%
echo ====================================================

IF "%JAVA_HOME%" == "" goto NoJavaHome
echo Running with JAVA_HOME specified
"%JAVA_HOME%/bin/java" %JAVA_OPT% -cp lib/*;. com.rameses.osiris3.platform.OSBootStrap
goto End

:NoJavaHome
echo Running with no JAVA_HOME specified
java %JAVA_OPT% -cp lib/*;. com.rameses.osiris3.platform.OSBootStrap

:End
