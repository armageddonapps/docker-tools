@echo off

call _versions.bat

if defined DT_MVN_VERSION (
    set DT_MVN_VERSION=%DT_MVN_VERSION%
) else (
    set DT_MVN_VERSION=%DT_DEFAULT_MVN_VERSION%
)

docker run -it --rm -v %cd%:/usr/workdir -w /usr/workdir maven:%DT_MVN_VERSION% mvn %*