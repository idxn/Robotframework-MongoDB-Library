cls
@echo off
pip uninstall -y robotframework-mongolibrary
python setup.py install
IF %ERRORLEVEL% NEQ 0 (
	goto error
)
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
