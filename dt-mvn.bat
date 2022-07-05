@echo off

call _versions.bat

if defined DT_MVN_VERSION (
    set DT_MVN_VERSION=%DT_MVN_VERSION%
) else (
    set DT_MVN_VERSION=%DT_DEFAULT_MVN_VERSION%
)

call _set_env.bat

docker run -it --rm %DT_ENV% %DT_ENV_EXT% -v %USERPROFILE%\.m2:/root/.m2 -v %cd%:/usr/workdir -w /usr/workdir maven:%DT_MVN_VERSION% mvn %*