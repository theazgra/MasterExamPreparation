@echo off

REM del test.pdf
pandoc --toc -V geometry:margin=1in -s documents/basic_math_for_it.md documents/software_engineering.md documents/databases.md documents/computer_networks.md documents/data_analysis.md -o preparation.pdf