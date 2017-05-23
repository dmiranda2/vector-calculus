#!/bin/bash
latex main2.tex
makeindex -s myindex.ist -o main2.ind main2.idx

bibtex main2
latex main2.tex
dvips -Ppdf -G0 -z main2.dvi -o
ps2pdf14 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -dPDFSETTINGS=/printer main2.ps
