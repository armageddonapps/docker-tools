@echo off

call _versions.bat

if defined DT_NODE_VERSION (
    set DT_NODE_VERSION=%DT_NODE_VERSION%
) else (
    set DT_NODE_VERSION=%DT_DEFAULT_NODE_VERSION%
)

call _set_env.bat

docker run -it --rm %DT_ENV% %DT_ENV_EXT% -v %cd%:/usr/workdir -w /usr/workdir node:%DT_NODE_VERSION% %*
