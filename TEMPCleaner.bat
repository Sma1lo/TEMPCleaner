@echo off

echo Cleaning temporary files...

del /q /f "%TEMP%*"
del /q /f "C:WindowsTemp*"

for /d %%p in ("%TEMP%*") do @if not exist "%%p*" rmdir "%%p"
for /d %%p in ("C:WindowsTemp*") do @if not exist "%%p*" rmdir "%%p"

echo Temporary files cleaned.
pause
