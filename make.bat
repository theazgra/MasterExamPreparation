@echo off

REM You can pass additional arguments to this batch file and it will be forwarded to pandoc.
pushd documents
pandoc -V geometry:margin=1in -s basic_math_for_it.md software_engineering.md databases.md computer_networks.md data_analysis.md -o ../preparation.pdf -f markdown+implicit_figures %*

popd
REM --pdf-engine=xelatex
