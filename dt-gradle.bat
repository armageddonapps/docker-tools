@echo off

call _versions.bat

if defined DT_GRADLE_VERSION (
    set DT_GRADLE_VERSION=%DT_GRADLE_VERSION%
) else (
    set DT_GRADLE_VERSION=%DT_DEFAULT_GRADLE_VERSION%
)

call _set_env.bat

docker run -it --rm %DT_ENV% %DT_ENV_EXT% -v %cd%:/usr/workdir -w /usr/workdir gradle:%DT_GRADLE_VERSION% gradle %*