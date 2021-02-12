@ECHO OFF

SET CR_SERVER=hackaton-group1

SET PATH_IMPLEMENTATION=C:\home\bcp\bootcamp\hackaton

REM Construir imagenes
CALL:BUILD_IMAGE %PATH_IMPLEMENTATION%\hackaton-config-server config-server
CALL:BUILD_IMAGE %PATH_IMPLEMENTATION%\hackaton-backend-data data-virtualcard-v1
CALL:BUILD_IMAGE %PATH_IMPLEMENTATION%\hackaton-backend-business business-virtualcard-v1
CALL:BUILD_IMAGE %PATH_IMPLEMENTATION%\hackaton-backend-channel channel-virtualcard-app-v1


GOTO:EOF

:BUILD_IMAGE
    SET service_path=%1
    SET artifact=%2

    SET tag=%CR_SERVER%/%artifact%:latest

    echo -----------------------------------------------------------------------
    echo Building %tag% ...
    echo

    docker build --rm --tag %tag% %service_path%

    docker image prune --force

    echo
GOTO:EOF