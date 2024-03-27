cd /D "%~dp0"

SET src_folder=./Contents
SET tar_folder="%appdata%/.minecraft/"

if exist "%appdata%/.minecraft/mods" rd /q /s "%appdata%/.minecraft/mods"

FOR /f %%a IN ('dir "%src_folder%" /b') DO (
	echo loopin
	echo %%a
	move "%src_folder%/%%a" %tar_folder%
)

echo Done!

pause