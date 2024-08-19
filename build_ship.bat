@echo off

set folder_name=build

if exist %folder_name% (
    REM If the folder exists, delete it
    rmdir /s /q %folder_name%
)

mkdir %folder_name%
cd %folder_name%
                            
REM build with clang, lotsa flags for all my stuff
clang -I ../src -std=c99 -O3 -Wall -Wshadow -Wswitch-enum -Wstrict-prototypes -Wno-unused-function -Wuninitialized -fvisibility=hidden -Bsymbolic -Wno-msvc-not-found ../src/eerie/eerie_main.c -o eerie.exe