@echo off

rem Set paths and files
set src_dir=E:\game_workspace\engine\src
set files=%src_dir%\main.c %src_dir%\glad.c

rem Set include directories
set include_dir=E:\game_workspace\include

rem Set library directories and libraries
set lib_dir=E:\game_workspace\lib
set libs=%lib_dir%\SDL2main.lib %lib_dir%\SDL2.lib %lib_dir%\freetype.lib


rem Compile using clang (LLVM)
clang -o mygame.exe %files% -I"%include_dir%" -L"%lib_dir%" %libs% -lopengl32

rem Pause to see output before closing
pause
