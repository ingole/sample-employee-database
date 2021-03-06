@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  springbootjetty-sample startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and SPRINGBOOTJETTY_SAMPLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\springbootjetty-sample-1.0.0.jar;%APP_HOME%\lib\mapstruct-jdk8-1.0.0.Final.jar;%APP_HOME%\lib\spring-boot-starter-web-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-1.3.1.RELEASE.jar;%APP_HOME%\lib\hsqldb-2.3.3.jar;%APP_HOME%\lib\jetty-jmx-9.2.14.v20151106.jar;%APP_HOME%\lib\jackson-core-2.6.4.jar;%APP_HOME%\lib\jackson-annotations-2.6.4.jar;%APP_HOME%\lib\jackson-databind-2.6.4.jar;%APP_HOME%\lib\spring-boot-metrics-0.0.1.jar;%APP_HOME%\lib\spring-boot-logback-0.0.1.jar;%APP_HOME%\lib\spring-boot-swagger-0.0.1.jar;%APP_HOME%\lib\spring-boot-healthcheck-jetty-1.3.1.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.12.jar;%APP_HOME%\lib\logback-classic-1.1.3.jar;%APP_HOME%\lib\logback-core-1.1.3.jar;%APP_HOME%\lib\springfox-swagger2-2.3.1.jar;%APP_HOME%\lib\springfox-swagger-ui-2.3.1.jar;%APP_HOME%\lib\guava-18.0.jar;%APP_HOME%\lib\jsr305-3.0.1.jar;%APP_HOME%\lib\annotations-3.0.1.jar;%APP_HOME%\lib\commons-collections4-4.1.jar;%APP_HOME%\lib\metrics-core-3.1.2.jar;%APP_HOME%\lib\metrics-jersey2-3.1.2.jar;%APP_HOME%\lib\metrics-jvm-3.1.2.jar;%APP_HOME%\lib\metrics-jetty9-3.1.2.jar;%APP_HOME%\lib\metrics-logback-3.1.2.jar;%APP_HOME%\lib\metrics-spring-3.1.2.jar;%APP_HOME%\lib\metrics3-statsd-4.1.0.jar;%APP_HOME%\lib\jersey-bean-validation-2.22.1.jar;%APP_HOME%\lib\spring-cloud-sleuth-zipkin-1.0.0.M4.jar;%APP_HOME%\lib\HikariCP-2.4.3.jar;%APP_HOME%\lib\mysql-connector-java-5.1.38.jar;%APP_HOME%\lib\spring-boot-starter-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-validation-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-web-4.2.4.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.2.4.RELEASE.jar;%APP_HOME%\lib\jetty-servlets-9.2.14.v20151106.jar;%APP_HOME%\lib\jetty-webapp-9.2.14.v20151106.jar;%APP_HOME%\lib\spring-boot-actuator-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.2.4.RELEASE.jar;%APP_HOME%\lib\aspectjweaver-1.8.7.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.3.1.RELEASE.jar;%APP_HOME%\lib\hibernate-entitymanager-4.3.11.Final.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-data-jpa-1.9.2.RELEASE.jar;%APP_HOME%\lib\spring-aspects-4.2.4.RELEASE.jar;%APP_HOME%\lib\jetty-util-9.2.14.v20151106.jar;%APP_HOME%\lib\metrics-healthchecks-3.1.2.jar;%APP_HOME%\lib\metrics-annotation-3.1.2.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.3.1.RELEASE.jar;%APP_HOME%\lib\healthcheck-core-0.0.1.jar;%APP_HOME%\lib\mapstruct-1.0.0.Final.jar;%APP_HOME%\lib\swagger-annotations-1.5.5.jar;%APP_HOME%\lib\swagger-models-1.5.5.jar;%APP_HOME%\lib\springfox-spi-2.3.1.jar;%APP_HOME%\lib\springfox-schema-2.3.1.jar;%APP_HOME%\lib\springfox-swagger-common-2.3.1.jar;%APP_HOME%\lib\springfox-spring-web-2.3.1.jar;%APP_HOME%\lib\classmate-1.3.1.jar;%APP_HOME%\lib\spring-plugin-core-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-plugin-metadata-1.2.0.RELEASE.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\jersey-server-2.22.1.jar;%APP_HOME%\lib\jetty-server-9.2.14.v20151106.jar;%APP_HOME%\lib\spring-core-4.2.4.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.2.4.RELEASE.jar;%APP_HOME%\lib\spring-context-support-4.2.4.RELEASE.jar;%APP_HOME%\lib\metrics-statsd-common-4.1.0.jar;%APP_HOME%\lib\javax.inject-2.4.0-b31.jar;%APP_HOME%\lib\jersey-common-2.22.1.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\hibernate-validator-5.2.2.Final.jar;%APP_HOME%\lib\javax.el-api-2.2.4.jar;%APP_HOME%\lib\javax.el-2.2.4.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\spring-cloud-sleuth-core-1.0.0.M4.jar;%APP_HOME%\lib\brave-spancollector-scribe-3.2.0.jar;%APP_HOME%\lib\spring-boot-1.3.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.3.1.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.16.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.30.jar;%APP_HOME%\lib\spring-context-4.2.4.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.2.4.RELEASE.jar;%APP_HOME%\lib\jetty-continuation-9.2.14.v20151106.jar;%APP_HOME%\lib\jetty-http-9.2.14.v20151106.jar;%APP_HOME%\lib\jetty-io-9.2.14.v20151106.jar;%APP_HOME%\lib\jetty-xml-9.2.14.v20151106.jar;%APP_HOME%\lib\jetty-servlet-9.2.14.v20151106.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-jdbc-4.2.4.RELEASE.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\jboss-logging-annotations-1.2.0.Beta1.jar;%APP_HOME%\lib\hibernate-core-4.3.11.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-4.0.5.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\spring-data-commons-1.11.2.RELEASE.jar;%APP_HOME%\lib\spring-orm-4.2.4.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.2.4.RELEASE.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.13.jar;%APP_HOME%\lib\springfox-core-2.3.1.jar;%APP_HOME%\lib\jersey-client-2.22.1.jar;%APP_HOME%\lib\jersey-media-jaxb-2.22.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\hk2-api-2.4.0-b31.jar;%APP_HOME%\lib\hk2-locator-2.4.0-b31.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jersey-guava-2.22.1.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\brave-core-3.2.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.13.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.13.jar;%APP_HOME%\lib\jetty-security-9.2.14.v20151106.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-1.1.0.Final.jar;%APP_HOME%\lib\hk2-utils-2.4.0-b31.jar;%APP_HOME%\lib\aopalliance-repackaged-2.4.0-b31.jar;%APP_HOME%\lib\libthrift-0.9.0.jar

@rem Execute springbootjetty-sample
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SPRINGBOOTJETTY_SAMPLE_OPTS%  -classpath "%CLASSPATH%" com.ekart.springbootjetty.sample.apis.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SPRINGBOOTJETTY_SAMPLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SPRINGBOOTJETTY_SAMPLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
