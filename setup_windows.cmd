cls
@echo off

SET "isproxy="
SET /p isproxy="Hello, do you need to install via proxy? (Y/N) "
IF NOT DEFINED isproxy GOTO install
IF /I "%isproxy%"=="n" GOTO install
set http_proxy=http://10.125.128.35:8080
set https_proxy=http://10.125.128.35:8080


:install
pip uninstall -y robotframework-mongolibrary
python setup.py install
IF %ERRORLEVEL% NEQ 0 (
	goto error
)
python -m robot.libdoc MongoDBLibrary ./doc/MongoDBLibrary.html
goto success

:error
echo.
color 4
echo !!! 'robotframework-mongolibrary' idxn repo is not installed properly !!!
echo.
goto end

:success

@echo off
cls
color 2
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !!!                                                                    !!!
echo !!! 'robotframework-mongolibrary' idxn repo installed successfully !!!
echo !!!                                                                    !!!
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo.
color
:end
pause
