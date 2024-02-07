@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  sputnik startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and SPUTNIK_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\sputnik-2.6.0.jar;%APP_HOME%\lib\gerrit-rest-java-client-0.9.3.jar;%APP_HOME%\lib\jcabi-github-1.0.jar;%APP_HOME%\lib\httpclient-4.5.8.jar;%APP_HOME%\lib\jackson-databind-2.3.0.jar;%APP_HOME%\lib\annotations-12.0.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.26.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\json-path-2.4.0.jar;%APP_HOME%\lib\org.eclipse.jgit-5.5.1.201910021850-r.jar;%APP_HOME%\lib\CodeNarc-1.4.jar;%APP_HOME%\lib\zt-exec-1.8.jar;%APP_HOME%\lib\GMetrics-1.0.jar;%APP_HOME%\lib\jcabi-xml-0.18.1.jar;%APP_HOME%\lib\jcabi-http-1.16.jar;%APP_HOME%\lib\jcabi-immutable-1.4.jar;%APP_HOME%\lib\jcabi-aspects-0.22.5.jar;%APP_HOME%\lib\jcabi-manifests-1.1.jar;%APP_HOME%\lib\jcabi-log-0.17.2.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\checkstyle-8.1.jar;%APP_HOME%\lib\commons-cli-1.4.jar;%APP_HOME%\lib\pmd-java-6.0.0.jar;%APP_HOME%\lib\pmd-core-6.0.0.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\spotbugs-4.2.0.jar;%APP_HOME%\lib\jaxen-1.2.0.jar;%APP_HOME%\lib\xercesImpl-2.9.1.jar;%APP_HOME%\lib\scalastyle_2.10-0.4.0.jar;%APP_HOME%\lib\groovy-2.3.4.jar;%APP_HOME%\lib\jslint4java-2.0.5.jar;%APP_HOME%\lib\jshint4j-2.9.5.jar;%APP_HOME%\lib\javax.json-1.0.4.jar;%APP_HOME%\lib\compiler-0.8.17.jar;%APP_HOME%\lib\detekt-core-1.14.0.jar;%APP_HOME%\lib\detekt-tooling-1.14.0.jar;%APP_HOME%\lib\detekt-rules-1.14.0.jar;%APP_HOME%\lib\detekt-metrics-1.14.0.jar;%APP_HOME%\lib\detekt-report-txt-1.14.0.jar;%APP_HOME%\lib\detekt-report-xml-1.14.0.jar;%APP_HOME%\lib\detekt-api-1.14.0.jar;%APP_HOME%\lib\detekt-parser-1.14.0.jar;%APP_HOME%\lib\detekt-psi-utils-1.14.0.jar;%APP_HOME%\lib\detekt-report-html-1.14.0.jar;%APP_HOME%\lib\detekt-rules-complexity-1.14.0.jar;%APP_HOME%\lib\detekt-rules-coroutines-1.14.0.jar;%APP_HOME%\lib\detekt-rules-documentation-1.14.0.jar;%APP_HOME%\lib\detekt-rules-empty-1.14.0.jar;%APP_HOME%\lib\detekt-rules-errorprone-1.14.0.jar;%APP_HOME%\lib\detekt-rules-exceptions-1.14.0.jar;%APP_HOME%\lib\detekt-rules-naming-1.14.0.jar;%APP_HOME%\lib\detekt-rules-performance-1.14.0.jar;%APP_HOME%\lib\detekt-rules-style-1.14.0.jar;%APP_HOME%\lib\ktlint-ruleset-standard-0.39.0.jar;%APP_HOME%\lib\ktlint-core-0.39.0.jar;%APP_HOME%\lib\kotlin-compiler-embeddable-1.4.10.jar;%APP_HOME%\lib\kotlin-reflect-1.4.10.jar;%APP_HOME%\lib\kotlin-stdlib-1.4.10.jar;%APP_HOME%\lib\jcommander-1.78.jar;%APP_HOME%\lib\httpcore-4.4.11.jar;%APP_HOME%\lib\commons-beanutils-1.9.3.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\jackson-annotations-2.3.0.jar;%APP_HOME%\lib\jackson-core-2.3.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\json-smart-2.3.jar;%APP_HOME%\lib\jsch-0.1.55.jar;%APP_HOME%\lib\jzlib-1.1.1.jar;%APP_HOME%\lib\JavaEWAH-1.1.6.jar;%APP_HOME%\lib\bcpg-jdk15on-1.61.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.61.jar;%APP_HOME%\lib\bcprov-jdk15on-1.61.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\antlr4-runtime-4.7.jar;%APP_HOME%\lib\javacc-5.0.jar;%APP_HOME%\lib\saxon-9.1.0.8.jar;%APP_HOME%\lib\saxon-9.1.0.8-dom.jar;%APP_HOME%\lib\commons-text-1.9.jar;%APP_HOME%\lib\commons-lang3-3.11.jar;%APP_HOME%\lib\Saxon-HE-10.3.jar;%APP_HOME%\lib\asm-commons-9.0.jar;%APP_HOME%\lib\asm-util-9.0.jar;%APP_HOME%\lib\asm-analysis-9.0.jar;%APP_HOME%\lib\asm-tree-9.0.jar;%APP_HOME%\lib\accessors-smart-1.2.jar;%APP_HOME%\lib\asm-9.0.jar;%APP_HOME%\lib\bcel-6.5.0.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\dom4j-2.1.3.jar;%APP_HOME%\lib\spotbugs-annotations-4.2.0.jar;%APP_HOME%\lib\json-20200518.jar;%APP_HOME%\lib\scalariform_2.10-0.1.4.jar;%APP_HOME%\lib\scopt_2.10-3.2.0.jar;%APP_HOME%\lib\groovy-all-2.3.11.jar;%APP_HOME%\lib\groovy-ant-2.3.11.jar;%APP_HOME%\lib\rhino-1.7.7.2.jar;%APP_HOME%\lib\xembly-0.22.jar;%APP_HOME%\lib\hamcrest-library-1.3.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\aspectjrt-1.8.7.jar;%APP_HOME%\lib\jersey-server-2.17.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.4.10.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\ec4j-core-0.2.2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\scala-library-2.10.3.jar;%APP_HOME%\lib\ant-antlr-1.9.3.jar;%APP_HOME%\lib\ant-junit-1.9.3.jar;%APP_HOME%\lib\ant-1.9.3.jar;%APP_HOME%\lib\ant-launcher-1.9.3.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\antlr-runtime-3.5.2.jar;%APP_HOME%\lib\jersey-client-2.17.jar;%APP_HOME%\lib\jersey-media-jaxb-2.17.jar;%APP_HOME%\lib\jersey-common-2.17.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\hk2-locator-2.4.0-b10.jar;%APP_HOME%\lib\hk2-api-2.4.0-b10.jar;%APP_HOME%\lib\javax.inject-2.4.0-b10.jar;%APP_HOME%\lib\kotlin-script-runtime-1.4.10.jar;%APP_HOME%\lib\kotlin-daemon-embeddable-1.4.10.jar;%APP_HOME%\lib\trove4j-1.0.20181211.jar;%APP_HOME%\lib\snakeyaml-1.27.jar;%APP_HOME%\lib\kotlinx-html-jvm-0.7.2.jar;%APP_HOME%\lib\jersey-guava-2.17.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\hk2-utils-2.4.0-b10.jar;%APP_HOME%\lib\aopalliance-repackaged-2.4.0-b10.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\javax.inject-1.jar


@rem Execute sputnik
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SPUTNIK_OPTS%  -classpath "%CLASSPATH%" pl.touk.sputnik.Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SPUTNIK_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SPUTNIK_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
