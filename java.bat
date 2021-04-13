@echo off

call _versions.bat

if defined DT_JAVA_VERSION (
    set DT_JAVA_VERSION=%DT_JAVA_VERSION%
) else (
    set DT_JAVA_VERSION=%DT_DEFAULT_JAVA_VERSION%
)

docker run -it --rm -v %cd%:/usr/workdir -w /usr/workdir openjdk:%DT_JAVA_VERSION% java %*