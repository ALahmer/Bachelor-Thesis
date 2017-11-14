@echo off
set MAIN=Lahmer_Abdelilah_tesi
set BUILD_DIR=.\

call clean.bat
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

@echo --------------------------------------------------------------
@echo -                     Inizializzazione                       -
@echo --------------------------------------------------------------

pdflatex -output-directory=%BUILD_DIR% %MAIN%

call compile-gloss.bat

pdflatex -output-directory=%BUILD_DIR% %MAIN%

call compile-gloss.bat

@echo --------------------------------------------------------------
@echo -                    Generazione Documento                   -
@echo --------------------------------------------------------------

pdflatex -output-directory=%BUILD_DIR% %MAIN%

makeglossaries -output-directory=%BUILD_DIR% %MAIN%

pdflatex -output-directory=%BUILD_DIR% %MAIN%

makeglossaries -output-directory=%BUILD_DIR% %MAIN%

pdflatex -output-directory=%BUILD_DIR% %MAIN%
pdflatex -output-directory=%BUILD_DIR% %MAIN%

@echo ---------------------------- END -----------------------------

set /p keys=Done...