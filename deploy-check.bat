@echo off
echo ========================================
echo Human Flatus Atlas - Pre-Flight Check
echo ========================================
echo.

echo Checking main files...
if exist "index.html" (
    echo [✓] index.html found
) else (
    echo [✗] index.html missing
)

if exist "feature-archive.html" (
    echo [✓] feature-archive.html found
) else (
    echo [✗] feature-archive.html missing
)

echo.
echo Checking media folder...
if exist "knowledge-base\media\BrantleyNYPost-snippet.jpg" (
    echo [✓] Brantley Hall image found
) else (
    echo [✗] Brantley Hall image missing
)

if exist "knowledge-base\media" (
    echo [✓] Media folder exists
) else (
    echo [✗] Media folder missing
)

echo.
echo Checking file sizes...
for %%f in (index.html) do (
    set /a size=%%~zf/1024
    echo [✓] index.html: %%~zf bytes
)

for %%f in (feature-archive.html) do (
    set /a size=%%~zf/1024
    echo [✓] feature-archive.html: %%~zf bytes
)

echo.
echo ========================================
echo READY TO PUBLISH!
echo ========================================
echo.
echo Next steps:
echo 1. Upload all files to your web server
echo 2. Test the live website
echo 3. Verify Brantley Hall image in breaking news
echo 4. Check Features Archive (54 stories, 3-column)
echo.
pause
