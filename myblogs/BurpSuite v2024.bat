@echo off
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
REM
@SET JAVA_HOME=%~dp0\..\jdk-22.0.2\
@SET Classpath=%JAVA_HOME%\lib\tools.jar;%JAVA_HOME%\lib\dt.jar;
@SET Path=%JAVA_HOME%\bin;
@echo %JAVA_HOME%
@java --version

start javaw -XX:+IgnoreUnrecognizedVMOptions --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:BurpLoaderKeygen_v1.17.jar -noverify -jar burpsuite_pro_v2024.9.5.jar

#start javaw -XX:MaxRAMPercentage=20 -Dfile.encoding=utf-8 --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:BurpLoaderKeygen_v1.17.jar -noverify -jar burpsuite_pro_v2024.8.4.jar

#start javaw -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -XX:+UseStringDeduplication -XX:MaxRAMPercentage=20 -Dfile.encoding=utf-8 --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:BurpLoaderKeygen_v1.17.jar -noverify -jar burpsuite_pro_v2024.8.2.jar



# 使用BurpSuiteLoader.jar进行激活
#start javaw -XX:+UseG1GC -noverify -Dsun.java2d.d3d=false -Dsun.java2d.noddraw=true --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED -javaagent:BurpSuiteLoader.jar -jar burpsuite_pro_v2024.2.1.3.jar