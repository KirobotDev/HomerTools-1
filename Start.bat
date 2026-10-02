```bat
@echo off
title HomerTools
cd /d "%~dp0"

echo =====================================
echo           HOMERTOOLS
echo =====================================
echo.

echo [1/4] Creation de l'environnement Python...
python -m venv venv

if errorlevel 1 goto error

echo.
echo [2/4] Activation de l'environnement...
call venv\Scripts\activate.bat

echo.
echo [3/4] Installation des dependances...
python -m pip install --upgrade pip

if exist requirements.txt (
    pip install -r requirements.txt
)

if errorlevel 1 goto error

cls
echo.
echo [4/4] Lancement de HomerTools.py...
echo.

python HomerTools.py

pause
exit /b 0

:error
echo.
echo ERREUR DURANT L'INSTALLATION
echo Verifiez que Python est installe.
pause
exit /b 1
```
