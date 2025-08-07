@echo off
SET REPO_DIR=TvojeHnizdoFull
SET ZIP_FILE=tvojehnizdo-full-system-export.zip
SET REPO_NAME=tvojehnizdo.com
SET REPO_URL=https://github.com/tvojehnizdo/%REPO_NAME%.git

echo [1/5] Creating folder %REPO_DIR%
mkdir %REPO_DIR%
cd %REPO_DIR%

echo [2/5] Extracting ZIP archive...
powershell -Command "Expand-Archive -Force ..\%ZIP_FILE% ."

echo [3/5] Initializing Git repository...
git init
git add .
git commit -m \"Initial commit – Tvoje Hnizdo full system\"

echo [4/5] Connecting to GitHub repository...
git remote add origin %REPO_URL%

echo [5/5] Pushing to GitHub...
git branch -M main
git push -u origin main

echo DONE. Project pushed to: %REPO_URL%
pause