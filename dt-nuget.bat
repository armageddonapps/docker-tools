@echo off

call _versions.bat

if defined DT_NUGET_VERSION (
    set DT_NUGET_VERSION=%DT_NUGET_VERSION%
) else (
    set DT_NUGET_VERSION=%DT_DEFAULT_NUGET_VERSION%
)

call _set_env.bat

docker run -it --rm %DT_ENV% %DT_ENV_EXT% -v %cd%:/usr/workdir -w /usr/workdir elusiveavenger/nuget-cli:%DT_NUGET_VERSION% %*
