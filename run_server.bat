@echo off
echo ================================================
echo   Autoplay Admin Panel - Local Server
echo ================================================
echo.
echo Starting server at http://localhost:8888
echo Open this link in Chrome after this window opens.
echo.
echo Press Ctrl+C to stop the server.
echo.

:: Try Python 3 first
python -m http.server 8888 2>nul
if %errorlevel% equ 0 goto :done

:: Try Python 2
python2 -m SimpleHTTPServer 8888 2>nul
if %errorlevel% equ 0 goto :done

:: Try Node http-server
npx http-server -p 8888 2>nul
if %errorlevel% equ 0 goto :done

echo ERROR: Could not start a server.
echo Please install Python from https://www.python.org/downloads/
echo Then run this file again.
pause

:done
