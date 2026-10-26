@echo off
chcp 65001 >nul
cd /d "%~dp0"
set PORT=8000
where python >nul 2>nul
if %errorlevel%==0 (
  echo [摩奇拉儿歌] 启动本地服务 http://localhost:%PORT%/
  start "" http://localhost:%PORT%/
  python -m http.server %PORT%
  goto :eof
)
where node >nul 2>nul
if %errorlevel%==0 (
  echo [摩奇拉儿歌] 启动本地服务 http://localhost:%PORT%/
  start "" http://localhost:%PORT%/
  npx --yes serve -l %PORT% .
  goto :eof
)
echo [摩奇拉儿歌] 未检测到 Python 或 Node.js, 请直接双击 index.html 使用。
pause
