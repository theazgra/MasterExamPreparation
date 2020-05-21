@echo off

REM del test.pdf
pushd documents
pandoc -V geometry:margin=1in -s basic_math_for_it.md software_engineering.md databases.md computer_networks.md data_analysis.md -o ../preparation.pdf -f markdown+implicit_figures

REM --pdf-engine=xelatex