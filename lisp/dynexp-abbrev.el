;;-*-coding: utf-8; lexical-binding: t;-*-

(defvar latex-mode-abbrev-table)
(defvar LaTeX-mode-abbrev-table)
(defvar AUCTeX-version)
(declare-function dynexp-modify-abbrev-table "dynexp")
;; (require 'dynexp)

;; adapted from FasTeX (http://www.cds.caltech.edu/~fastex/fastex.html)
(dynexp-modify-abbrev-table
 (if (>= (string-to-number AUCTeX-version) 13.3)
     LaTeX-mode-abbrev-table
   latex-mode-abbrev-table)
 `(
   ("AA" "\\mathbb{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("dAA" "\\mathbb{A}" dynexp-surround-with-dollars)
   ("oAA" "(\\mathbb{A})" dynexp-delete-leading-space)
   ("BB" "\\mathbb{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("dBB" "\\mathbb{B}" dynexp-surround-with-dollars)
   ("oBB" "(\\mathbb{B})" dynexp-delete-leading-space)
   ("CC" "\\mathbb{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("dCC" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("oCC" "(\\mathbb{C})" dynexp-delete-leading-space)
   ("DD" "\\mathbb{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("dDD" "\\mathbb{D}" dynexp-surround-with-dollars)
   ("oDD" "(\\mathbb{D})" dynexp-delete-leading-space)
   ("EE" "\\mathbb{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("dEE" "\\mathbb{E}" dynexp-surround-with-dollars)
   ("oEE" "(\\mathbb{E})" dynexp-delete-leading-space)
   ("FF" "\\mathbb{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("dFF" "\\mathbb{F}" dynexp-surround-with-dollars)
   ("oFF" "(\\mathbb{F})" dynexp-delete-leading-space)
   ("GG" "\\mathbb{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("dGG" "\\mathbb{G}" dynexp-surround-with-dollars)
   ("oGG" "(\\mathbb{G})" dynexp-delete-leading-space)
   ("HH" "\\mathbb{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("dHH" "\\mathbb{H}" dynexp-surround-with-dollars)
   ("oHH" "(\\mathbb{H})" dynexp-delete-leading-space)
   ("II" "\\mathbb{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("dII" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("oII" "(\\mathbb{I})" dynexp-delete-leading-space)
   ("JJ" "\\mathbb{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("dJJ" "\\mathbb{J}" dynexp-surround-with-dollars)
   ("oJJ" "(\\mathbb{J})" dynexp-delete-leading-space)
   ("KK" "\\mathbb{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("dKK" "\\mathbb{K}" dynexp-surround-with-dollars)
   ("oKK" "(\\mathbb{K})" dynexp-delete-leading-space)
   ("LL" "\\mathbb{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("dLL" "\\mathbb{L}" dynexp-surround-with-dollars)
   ("oLL" "(\\mathbb{L})" dynexp-delete-leading-space)
   ("MM" "\\mathbb{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("dMM" "\\mathbb{M}" dynexp-surround-with-dollars)
   ("oMM" "(\\mathbb{M})" dynexp-delete-leading-space)
   ("NN" "\\mathbb{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("dNN" "\\mathbb{N}" dynexp-surround-with-dollars)
   ("oNN" "(\\mathbb{N})" dynexp-delete-leading-space)
   ("OO" "\\mathbb{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("dOO" "\\mathbb{O}" dynexp-surround-with-dollars)
   ("oOO" "(\\mathbb{O})" dynexp-delete-leading-space)
   ("PP" "\\mathbb{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("dPP" "\\mathbb{P}" dynexp-surround-with-dollars)
   ("oPP" "(\\mathbb{P})" dynexp-delete-leading-space)
   ("QQ" "\\mathbb{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("dQQ" "\\mathbb{Q}" dynexp-surround-with-dollars)
   ("oQQ" "(\\mathbb{Q})" dynexp-delete-leading-space)
   ("RR" "\\mathbb{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("dRR" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("oRR" "(\\mathbb{R})" dynexp-delete-leading-space)
   ("SS" "\\mathbb{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("dSS" "\\mathbb{S}" dynexp-surround-with-dollars)
   ("oSS" "(\\mathbb{S})" dynexp-delete-leading-space)
   ("TT" "\\mathbb{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("dTT" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("oTT" "(\\mathbb{T})" dynexp-delete-leading-space)
   ("UU" "\\mathbb{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("dUU" "\\mathbb{U}" dynexp-surround-with-dollars)
   ("oUU" "(\\mathbb{U})" dynexp-delete-leading-space)
   ("VV" "\\mathbb{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("dVV" "\\mathbb{V}" dynexp-surround-with-dollars)
   ("oVV" "(\\mathbb{V})" dynexp-delete-leading-space)
   ("WW" "\\mathbb{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("dWW" "\\mathbb{W}" dynexp-surround-with-dollars)
   ("oWW" "(\\mathbb{W})" dynexp-delete-leading-space)
   ("XX" "\\mathbb{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("dXX" "\\mathbb{X}" dynexp-surround-with-dollars)
   ("oXX" "(\\mathbb{X})" dynexp-delete-leading-space)
   ("YY" "\\mathbb{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("dYY" "\\mathbb{Y}" dynexp-surround-with-dollars)
   ("oYY" "(\\mathbb{Y})" dynexp-delete-leading-space)
   ("ZZ" "\\mathbb{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("dZZ" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("oZZ" "(\\mathbb{Z})" dynexp-delete-leading-space)
   ("00p" "(0,0)" dynexp-delete-leading-space)
   ("03p" "(0, 0, 0)" dynexp-delete-leading-space)
   ("0p" "(0)" dynexp-delete-leading-space)
   ("1ou" "\\frac{1}{<+++>}<++>" dynexp)
   ("Bigo" "\\O\\left(<+++>\\right)<++>" dynexp)
   ("Calderon" "Calderón" nil)
   ("Cech" "Čech" nil)
   ("Frechet" "Frechét" nil)
   ("Holder" "Hölder" nil)
   ("Kahler" "Kähler" nil)
   ("Turan" "Turán" nil)
   ("Kuhne" "Kühne" nil)
   ("Lindelof" "Lindelöf" nil)
   ("Neron" "Néron" nil)
   ("Plucker" "Plücker" nil)
   ("Zurich" "Zürich" nil)
   ("Teichmuller" "Teichmüller" nil)
   ("Brudern" "Brüdern" nil)
   ("Poincare" "Poincaré" nil)
   ("Schroedinger" "Schrödinger" nil)
   ("Schrodinger" "Schrödinger" nil)
   ("Szego" "Szegö" nil)
   ("Szemeredi" "Szemerédi" nil)
   ("Erdos" "Erdös" nil)
   ("Szemeredi's" "Szemerédi's" nil)
   ("Dieudonne" "Dieudonné" nil)
   ("Apery" "Apéry" nil)
   ("Grobner" "Gröbner" nil)
   ("Polya" "Pólya" nil)
   ("Salie" "Salié" nil)
   ("absu" "\\lvert <+++> \\rvert<++>" dynexp)
   ("ace" "\\'{E}" nil)
   ("ada" "& = &" nil)
   ("ae" "\\'{e}" nil)
   ("ag" "\\arg" nil)
   ("ale" "\\aleph" nil)
   ("alu" "\\alert{<+++>}<++>" dynexp)
   ("amp" "&" nil)
   ("angl" "\\angle" nil)
   ("aplb" "\\mathbf{a} + \\mathbf{b}" nil)
   ("apx" "\\approx" nil)
   ("artl" "\\mapsto" nil)
   ("asy" "\\asymp" nil)
   ("atib" "\\mathbf{a} \\times \\mathbf{b}" nil)
   ("atibp" "(\\mathbf{a} \\times \\mathbf{b})" dynexp-delete-leading-space)
   ("ats" "@" nil)
   ("ava" "|a|" nil)
   ("avb" "|b|" nil)
   ("avc" "|c|" nil)
   ("avx" "|x|" nil)
   ("avy" "|y|" nil)
   ("avz" "|z|" nil)
   ("b0" "\\mathbf{0}" dynexp-surround-with-dollars-unless-texmathp)
   ("b1" "\\mathbf{1}" dynexp-surround-with-dollars-unless-texmathp)
   ("b10" "\\mathbf{10}" dynexp-surround-with-dollars-unless-texmathp)
   ("b2" "\\mathbf{2}" dynexp-surround-with-dollars-unless-texmathp)
   ("b3" "\\mathbf{3}" dynexp-surround-with-dollars-unless-texmathp)
   ("b4" "\\mathbf{4}" dynexp-surround-with-dollars-unless-texmathp)
   ("b5" "\\mathbf{5}" dynexp-surround-with-dollars-unless-texmathp)
   ("b6" "\\mathbf{6}" dynexp-surround-with-dollars-unless-texmathp)
   ("b7" "\\mathbf{7}" dynexp-surround-with-dollars-unless-texmathp)
   ("b8" "\\mathbf{8}" dynexp-surround-with-dollars-unless-texmathp)
   ("b9" "\\mathbf{9}" dynexp-surround-with-dollars-unless-texmathp)
   ("ba" "\\mathbf{a}" dynexp-surround-with-dollars-unless-texmathp)
   ("bac" "\\begin{acknowledgment}
<+++>
\\end{acknowledgment}<++>" dynexp-fold)
   ("bal" "\\begin{align}
<+++>
\\end{align}<++>" dynexp)
   ("bala" "\\begin{alignat}{}
<+++>
\\end{alignat}<++>" dynexp)
   ("balas" "\\begin{alignat*}{}
<+++>
\\end{alignat*}<++>" dynexp)
   ("bald" "\\begin{aligned}
<+++>
\\end{aligned}<++>" dynexp)
   ("balda" "\\begin{alignedat}{}
<+++>
\\end{alignedat}<++>" dynexp)
   ("balg" "\\begin{algorithm}
<+++>
\\end{algorithm}<++>" dynexp-fold)
   ("bals" "\\begin{align*}
<+++>
\\end{align*}<++>" dynexp)
   ("bans" "\\begin{answer}
<+++>
\\end{answer}<++>" dynexp-fold)
   ("bb" "\\mathbf{b}" nil)
   ("bfb" "\\mathbf{b}" nil)
   ("bbca" "\\mathbb{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbca1" "\\mathbb{A}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbca2" "\\mathbb{A}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbca3" "\\mathbb{A}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcam" "\\mathbb{A}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcan" "\\mathbb{A}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcb" "\\mathbb{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcb1" "\\mathbb{B}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcb2" "\\mathbb{B}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcb3" "\\mathbb{B}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcbm" "\\mathbb{B}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcbn" "\\mathbb{B}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcc" "\\mathbb{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcc1" "\\mathbb{C}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcc2" "\\mathbb{C}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcc3" "\\mathbb{C}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbccm" "\\mathbb{C}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbccn" "\\mathbb{C}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcd" "\\mathbb{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcd1" "\\mathbb{D}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcd2" "\\mathbb{D}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcd3" "\\mathbb{D}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcdm" "\\mathbb{D}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcdn" "\\mathbb{D}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbce" "\\mathbb{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbce1" "\\mathbb{E}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbce2" "\\mathbb{E}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbce3" "\\mathbb{E}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcem" "\\mathbb{E}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcen" "\\mathbb{E}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcf" "\\mathbb{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcf1" "\\mathbb{F}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcf2" "\\mathbb{F}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcf3" "\\mathbb{F}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcfm" "\\mathbb{F}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcfn" "\\mathbb{F}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcg" "\\mathbb{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcg1" "\\mathbb{G}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcg2" "\\mathbb{G}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcg3" "\\mathbb{G}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcgm" "\\mathbb{G}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcgn" "\\mathbb{G}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbch" "\\mathbb{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbch1" "\\mathbb{H}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbch2" "\\mathbb{H}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbch3" "\\mathbb{H}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbchm" "\\mathbb{H}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbchn" "\\mathbb{H}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbci" "\\mathbb{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbci1" "\\mathbb{I}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbci2" "\\mathbb{I}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbci3" "\\mathbb{I}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcim" "\\mathbb{I}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcin" "\\mathbb{I}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcj" "\\mathbb{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcj1" "\\mathbb{J}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcj2" "\\mathbb{J}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcj3" "\\mathbb{J}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcjm" "\\mathbb{J}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcjn" "\\mathbb{J}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbck" "\\mathbb{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbck1" "\\mathbb{K}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbck2" "\\mathbb{K}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbck3" "\\mathbb{K}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbckm" "\\mathbb{K}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbckn" "\\mathbb{K}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcl" "\\mathbb{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcl1" "\\mathbb{L}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcl2" "\\mathbb{L}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcl3" "\\mathbb{L}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbclm" "\\mathbb{L}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcln" "\\mathbb{L}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcm" "\\mathbb{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcm1" "\\mathbb{M}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcm2" "\\mathbb{M}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcm3" "\\mathbb{M}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcmm" "\\mathbb{M}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcmn" "\\mathbb{M}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcn" "\\mathbb{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcn1" "\\mathbb{N}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcn2" "\\mathbb{N}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcn3" "\\mathbb{N}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcnm" "\\mathbb{N}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcnn" "\\mathbb{N}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbco" "\\mathbb{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbco1" "\\mathbb{O}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbco2" "\\mathbb{O}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbco3" "\\mathbb{O}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcom" "\\mathbb{O}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcon" "\\mathbb{O}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcp" "\\mathbb{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcp1" "\\mathbb{P}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcp2" "\\mathbb{P}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcp3" "\\mathbb{P}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcpm" "\\mathbb{P}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcpn" "\\mathbb{P}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcq" "\\mathbb{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcq1" "\\mathbb{Q}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcq2" "\\mathbb{Q}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcq3" "\\mathbb{Q}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcqm" "\\mathbb{Q}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcqn" "\\mathbb{Q}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcr" "\\mathbb{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcs" "\\mathbb{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcs1" "\\mathbb{S}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcs2" "\\mathbb{S}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcs3" "\\mathbb{S}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcsm" "\\mathbb{S}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcsn" "\\mathbb{S}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbct" "\\mathbb{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbct1" "\\mathbb{T}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbct2" "\\mathbb{T}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbct3" "\\mathbb{T}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbctm" "\\mathbb{T}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbctn" "\\mathbb{T}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcu" "\\mathbb{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcu1" "\\mathbb{U}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcu2" "\\mathbb{U}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcu3" "\\mathbb{U}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcum" "\\mathbb{U}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcun" "\\mathbb{U}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcv" "\\mathbb{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcv1" "\\mathbb{V}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcv2" "\\mathbb{V}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcv3" "\\mathbb{V}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcvm" "\\mathbb{V}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcvn" "\\mathbb{V}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcw" "\\mathbb{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcw1" "\\mathbb{W}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcw2" "\\mathbb{W}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcw3" "\\mathbb{W}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcwm" "\\mathbb{W}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcwn" "\\mathbb{W}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcx" "\\mathbb{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcx1" "\\mathbb{X}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcx2" "\\mathbb{X}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcx3" "\\mathbb{X}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcxm" "\\mathbb{X}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcxn" "\\mathbb{X}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcy" "\\mathbb{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcy1" "\\mathbb{Y}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcy2" "\\mathbb{Y}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcy3" "\\mathbb{Y}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcym" "\\mathbb{Y}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcyn" "\\mathbb{Y}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcz" "\\mathbb{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcz1" "\\mathbb{Z}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcz2" "\\mathbb{Z}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("bbcz3" "\\mathbb{Z}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("bbczm" "\\mathbb{Z}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("bbczn" "\\mathbb{Z}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("bbib" "\\begin{thebibliography}{<+++>}<++>" dynexp)
   ("bbu" "\\mathbb{<+++>}<++>" dynexp)
   ("bca" "\\mathbf{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcas" "\\begin{cases}
<+++> 
& <++>
\\end{cases}<++>" dynexp)
   ("bcb" "\\mathbf{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcc" "\\mathbf{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcd" "\\mathbf{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("bce" "\\mathbf{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcf" "\\mathbf{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcg" "\\mathbf{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("bch" "\\mathbf{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("bci" "\\mathbf{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcj" "\\mathbf{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("bck" "\\mathbf{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcl" "\\mathbf{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("bclm" "\\begin{claim}
<+++>
\\end{claim}<++>" dynexp-fold)
   ("bcm" "\\mathbf{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcmnt" "\\begin{comment}
<+++>
\\end{comment}<++>" dynexp)
   ("bcn" "\\mathbf{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcncl" "\\begin{conclusion}
<+++>
\\end{conclusion}<++>" dynexp-fold)
   ("bcnd" "\\begin{condition}
<+++>
\\end{condition}<++>" dynexp)
   ("bcnj" "\\begin{conjecture}
<+++>
\\end{conjecture}<++>" dynexp-fold)
   ("bco" "\\mathbf{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcor" "\\begin{corollary}
<+++>
\\end{corollary}<++>" dynexp-fold)
   ("bcp" "\\mathbf{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcq" "\\mathbf{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcr" "\\mathbf{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcrit" "\\begin{criterion}
<+++>
\\end{criterion}<++>" dynexp-fold)
   ("bcs" "\\mathbf{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("bct" "\\mathbf{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("bctr" "\\begin{center}
<+++>
\\end{center}<++>" dynexp)
   ("bcu" "\\mathbf{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcv" "\\mathbf{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcw" "\\mathbf{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcx" "\\mathbf{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcy" "\\mathbf{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("bcz" "\\mathbf{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("bd" "\\mathbf{d}" dynexp-surround-with-dollars-unless-texmathp)
   ("bdfn" "\\begin{definition}
<+++>
\\end{definition}<++>" dynexp-fold)
   ("bdju" "\\bigsqcup" nil)
   ("bdma" "\\begin{displaymath}
<+++>
\\end{displaymath}<++>" dynexp)
   ("bdo" "\\begin{document}" nil)
   ("bdp" "\\begin{equation*}
<+++>
\\end{equation*}<++>" dynexp)
   ("bms" "\\begin{minted}{sage}
<+++>
\\end{minted}" dynexp-fold-and-mmm-parse)
   ("ceq" "" czm-tex-edit-repeat-most-recent-equation)
   ("cp" "" czm-tex-edit-repeat-most-recent-equation)
   ("cal" "" czm-tex-edit-repeat-align-segment)
   ("bds" "\\dotsb" nil)
   ("bea" "\\begin{array}{ccc}
<+++>
\\end{array}<++>" dynexp-fold)
   ("bee" "\\mathbf{e}" nil)
   ("bel1" "\\mathbf{e}_1" nil)
   ("bel2" "\\mathbf{e}_2" nil)
   ("bel3" "\\mathbf{e}_3" nil)
   ("beln" "\\mathbf{e}_n" nil)
   ("ben" "\\begin{enumerate}
\\item <+++>
\\end{enumerate}<++>" dynexp-fold)
   ("beni" "\\begin{enumerate}[(i)]
\\item <+++>
\\end{enumerate}<++>" dynexp-fold)
   ("bena" "\\begin{enumerate}[(a)]
\\item <+++>
\\end{enumerate}<++>" dynexp-fold)
   ("beq" "\\begin{equation}
<+++>
\\end{equation}<++>" dynexp)
   ("beqs" "\\begin{equation*}
<+++>
\\end{equation*}<++>" dynexp)
   ("besb" "\\begin{Sb}
<+++>
\\end{Sb}<++>" dynexp)
   ("besp" "\\begin{Sp}
<+++>
\\end{Sp}<++>" dynexp)
   ("bex" "\\begin{example}
<+++>
\\end{example}<++>" dynexp-fold)
   ("bexb" "\\begin{exampleblock}{<+++>}
\\begin{itemize}
\\item <++>
\\end{itemize}
\\end{exampleblock}<++>" dynexp)
   ("bexe" "\\begin{exercise}
<+++>
\\end{exercise}<++>" dynexp-fold)
   ("bfa" "\\mathbf{a}" nil)
   ("bfc" "\\mathbf{c}" nil)
   ("bfe" "\\mathbf{e}" nil)
   ("bff" "\\mathbf{f}" nil)
   ("bfi" "\\mathbf{i}" nil)
   ("bfig" "\\begin{figure}
<+++>
\\end{figure}<++>" dynexp)
   ("bfiu" "{\\bfi <+++>}<++>" dynexp)
   ("bfj" "\\mathbf{j}" nil)
   ("bfk" "\\mathbf{k}" nil)
   ("bfl" "\\left\\lfloor <+++> \\right\\rfloor<++>" dynexp)
   ("bflr" "\\left\\lfloor <+++> \\right\\rfloor<++>" dynexp)
   ("lflr" "\\left\\lfloor <+++> \\right\\rfloor<++>" dynexp)
   ("bfll" "\\begin{flushleft}
<+++>
\\end{flushleft}<++>" dynexp)
   ;; ("bflr" "\\begin{flushright}
   ;; <+++>
   ;; \\end{flushright}<++>" dynexp)
   ("bfu" "\\textbf{<+++>}<++>" dynexp)
   ("bg" "\\mathbf{g}" dynexp-surround-with-dollars-unless-texmathp)
   ("bga" "\\begin{gather}
<+++>
\\end{gather}<++>" dynexp)
   ("bgad" "\\begin{gathered}
<+++>
\\end{gathered}<++>" dynexp)
   ("bgas" "\\begin{gather*}
<+++>
\\end{gather*}<++>" dynexp)
   ("bgo" "\\O(<+++>)<++>" dynexp)
   ("bgo1" "\\O(1)" nil)
   ("bgop" "\\O\\left(<+++>\\right)<++>" dynexp)
   ("bh" "\\mathbf{h}" dynexp-surround-with-dollars-unless-texmathp)
   ("bibia" "\\bibitem[]{}
Author [year]
Title.
{\\it Journal\\/} {\\bf 11}, 123--223." nil)
   ("bibib" "\\bibitem[]{}
Author [year]
{\\it Title.\\/}
Publisher." nil)
   ("bigo" "\\O(<+++>)<++>" dynexp)
   ("bigo1" "\\O(1)" nil)
   ("bigop" "\\O\\left(<+++>\\right)<++>" dynexp)
   ("bints" "\\bigcap" nil)
   ("bitm" "\\begin{itemize}
\\item <+++>
\\end{itemize}<++>" dynexp-fold)
   ("bj" "\\mathbf{j}" dynexp-surround-with-dollars-unless-texmathp)
   ("bk" "\\mathbf{k}" dynexp-surround-with-dollars-unless-texmathp)
   ("bksl" "\\" nil)
   ("bl" "\\mathbf{l}" dynexp-surround-with-dollars-unless-texmathp)
   ("blackl" "\\quad\\blacklozenge" nil)
   ("blem" "\\begin{lemma}
<+++>
\\end{lemma}<++>" dynexp-fold)
   ("blk" "\\begin{block}{<+++>}
\\begin{itemize}
\\item <++>
\\end{itemize}
\\end{block}<++>" dynexp)
   ("blskp" "\\baselineskip" nil)
   ("blstr" "\\renewcommand{\\baselinestretch}{1.5}" nil)
   ("blt" "\\bullet" nil)
   ("hblt" "^{\\bullet}" dynexp-delete-leading-space)
   ("bm" "\\mathbf{m}" dynexp-surround-with-dollars-unless-texmathp)
   ("bma" "\\begin{math}
<+++>
\\end{math}<++>" dynexp)
   ("bmlt" "\\begin{multline}
<+++>
\\end{multline}<++>" dynexp)
   ("bmlts" "\\begin{multline*}
<+++>
\\end{multline*}<++>" dynexp)
   ("bmpg" "\\begin{minipage}{\\textwidth}" nil)
   ("bn" "\\mathbf{n}" dynexp-surround-with-dollars-unless-texmathp)
   ("bno" "\\binom{<+++>}{<++>}<++>" dynexp)
   ("bnota" "\\begin{notation}
<+++>
\\end{notation}<++>" dynexp-fold)
   ("bnote" "\\begin{note}
<+++>
\\end{note}<++>" dynexp-fold)
   ("bo" "\\mathbf{o}" dynexp-surround-with-dollars-unless-texmathp)
   ("bopl" "\\boxplus" nil)
   ("bp" "\\mathbf{p}" dynexp-surround-with-dollars-unless-texmathp)
   ("bprf" "\\begin{proof}
<+++>
\\end{proof}<++>" dynexp-fold)
   ("bprob" "\\begin{problem}
<+++>
\\end{problem}<++>" dynexp-fold)
   ("bprop" "\\begin{proposition}
<+++>
\\end{proposition}<++>" dynexp-fold)
   ("bq" "\\mathbf{q}" dynexp-surround-with-dollars-unless-texmathp)
   ("bqa" "\\begin{eqnarray}
<+++>
\\end{eqnarray}<++>" dynexp)
   ("bqal" "\\begin{eqnarray}\\label{eqn:<+++>}<++>" dynexp)
   ("bqas" "\\begin{eqnarray*}
<+++>
\\end{eqnarray*}<++>" dynexp)
   ("bqm" "``<+++>''<++>" dynexp)
   ("qt" "``<+++>''<++>" dynexp)
   ("bqst" "\\begin{question}
<+++>
\\end{question}<++>" dynexp-fold)
   ("bqt" "\\begin{quotation}
<+++>
\\end{quotation}<++>" dynexp)
   ("bques" "\\begin{question}
<+++>
\\end{question}<++>" dynexp-fold)
   ("br" "\\mathbf{r}" dynexp-surround-with-dollars-unless-texmathp)
   ("brmk" "\\begin{remark}
<+++>
\\end{remark}<++>" dynexp-fold)
   ("bs" "\\mathbf{s}" dynexp-surround-with-dollars-unless-texmathp)
   ("bskp" "\\bigskip" nil)
   ("bsl" "\\backslash" nil)
   ("bsol" "\\begin{solution}
<+++>
\\end{solution}<++>" dynexp)
   ("bsplt" "\\begin{split}
<+++>
\\end{split}<++>" dynexp)
   ("bsum" "\\begin{summary}
<+++>
\\end{summary}<++>" dynexp)
   ("bsy" "\\boldsymbol{<+++>}<++>" dynexp)
   ("bsyu" "\\boldsymbol{<+++>}<++>" dynexp)
   ("bt" "\\mathbf{t}" dynexp-surround-with-dollars-unless-texmathp)
   ("btab" "\\begin{table}
<+++>
\\end{table}<++>" dynexp)
   ("btb" "\\begin{tabbing}
<+++>
\\end{tabbing}<++>" dynexp)
   ("bthm" "\\begin{theorem}
<+++>
\\end{theorem}<++>" dynexp-fold)
   ("btr" "\\begin{tabular}{|c|c|}
<+++>
\\end{tabular}<++>" dynexp)
   ("bu" "\\mathbf{u}" dynexp-surround-with-dollars-unless-texmathp)
   ("buni" "\\bigcup" nil)
   ("bv" "\\mathbf{v}" dynexp-surround-with-dollars-unless-texmathp)
   ("bvrb" "\\begin{verbatim}
<+++>
\\end{verbatim}<++>" dynexp-fold)
   ("bw" "\\mathbf{w}" dynexp-surround-with-dollars-unless-texmathp)
   ("bx" "\\mathbf{x}" dynexp-surround-with-dollars-unless-texmathp)
   ("bxca" "\\begin{xca}
<+++>
\\end{xca}<++>" dynexp)
   ("bxcb" "\\begin{xcb}
<+++>
\\end{xcb}<++>" dynexp)
   ("byy" "\\mathbf{y}" nil)
   ("bz" "\\mathbf{z}" dynexp-surround-with-dollars-unless-texmathp)
   ("capt" "\\caption{<+++>}<++>" dynexp)
   ("captu" "\\caption{<+++>}<++>" dynexp)
   ("cau" "\\mathcal{<+++>}<++>" dynexp)
   ("cbx" "      %========================================================%
      %                                                        %
      %========================================================%
" nil)
   ("cca" "\\mathcal{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccb" "\\mathcal{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccc" "\\mathcal{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccd" "\\mathcal{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("cce" "\\mathcal{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccf" "\\mathcal{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccg" "\\mathcal{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("cch" "\\mathcal{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("cci" "\\mathcal{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccj" "\\mathcal{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("cck" "\\mathcal{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccl" "\\mathcal{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccm" "\\mathcal{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccn" "\\mathcal{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("cco" "\\mathcal{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccp" "\\mathcal{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccq" "\\mathcal{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccr" "\\mathcal{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccs" "\\mathcal{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("cct" "\\mathcal{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccu" "\\mathcal{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccv" "\\mathcal{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccw" "\\mathcal{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccx" "\\mathcal{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccy" "\\mathcal{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("ccz" "\\mathcal{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("cdli" "\\begin{equation*}
\\begin{CD}         
0 @>>> <+++> @><++>>><++> @><++>>> <++> @><++>>> <++> @>>>0
\\end{CD} 
\\end{equation*}
<++>" dynexp)
   ("cdo" "\\cdot" nil)
   ;; ("cdp" "\\cleardoublepage" nil)
   ("cds" "\\dotsc" nil)
   ("cdsq" "\\begin{equation*}
\\begin{CD}         
<+++> @><++>>><++>\\\\
@V<++>VV  @VV<++>V \\\\
<++> @>><++>><++>\\\\
\\end{CD}
\\end{equation*}
<++>" dynexp)
   ("cdu" "\\[
\\begin{CD}
<+++>
\\end{CD}<++>
\\]" dynexp)
   ("cei" "\\lceil <+++> \\rceil<++>" dynexp)
   ("cir" "\\circ" nil)
   ;; ("cit" "\\cite{<+++>}<++>" dynexp)
   ("citp" "(\\cite{})" dynexp-delete-leading-space)
   ("citu" "\\cite{<+++>}<++>" dynexp)
   ("cla" "\\circlearrowleft" nil)
   ("cld" "%-----------------------------------------------------------------------
" nil)
   ("cldd" "%=======================================================================
" nil)
   ("clin" "\\centerline{<+++>}<++>" dynexp)
   ("coph" "\\cos \\phi" nil)
   ("coq" "\\cos^2" nil)
   ("coth" "\\cos \\theta" nil)
   ("cpg" "\\clearpage" nil)
   ("cprct" "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" nil)
   ("cprt" "\\copyright" nil)
   ("cr2" "\\sqrt[3]{2}" nil)
   ("cra" "\\circlearrowright" nil)
   ("crlr" "%======================================================================%
%.......10........20........30........40........50........60........70.%
%________|_________|_________|_________|_________|_________|_________|_%
%======================================================================%
" nil)
   ("csd" "%-----------------------------
" nil)
   ("csdd" "%=============================
" nil)
   ("csp" "\\quad" nil)
   ("cu" "^3" dynexp-delete-leading-space)
   ("d0" "0" dynexp-surround-with-dollars)
   ("d00p" "(0,0)" dynexp-surround-with-dollars)
   ("d03p" "(0, 0, 0)" dynexp-surround-with-dollars)
   ("d0p" "(0)" dynexp-surround-with-dollars)
   ("d1" "1" dynexp-surround-with-dollars)
   ("d10" "10" dynexp-surround-with-dollars)
   ("d2" "2" dynexp-surround-with-dollars)
   ("d3" "3" dynexp-surround-with-dollars)
   ("d4" "4" dynexp-surround-with-dollars)
   ("d5" "5" dynexp-surround-with-dollars)
   ("d6" "6" dynexp-surround-with-dollars)
   ("d7" "7" dynexp-surround-with-dollars)
   ("d8" "8" dynexp-surround-with-dollars)
   ("d9" "9" dynexp-surround-with-dollars)
   ("da" "a" dynexp-surround-with-dollars)
   ("db" "b" dynexp-surround-with-dollars)
   ("db0" "\\mathbf{0}" dynexp-surround-with-dollars)
   ("db1" "\\mathbf{1}" dynexp-surround-with-dollars)
   ("db10" "\\mathbf{10}" dynexp-surround-with-dollars)
   ("db2" "\\mathbf{2}" dynexp-surround-with-dollars)
   ("db3" "\\mathbf{3}" dynexp-surround-with-dollars)
   ("db4" "\\mathbf{4}" dynexp-surround-with-dollars)
   ("db5" "\\mathbf{5}" dynexp-surround-with-dollars)
   ("db6" "\\mathbf{6}" dynexp-surround-with-dollars)
   ("db7" "\\mathbf{7}" dynexp-surround-with-dollars)
   ("db8" "\\mathbf{8}" dynexp-surround-with-dollars)
   ("db9" "\\mathbf{9}" dynexp-surround-with-dollars)
   ("dba" "\\mathbf{a}" dynexp-surround-with-dollars)
   ("dbb" "\\mathbf{b}" dynexp-surround-with-dollars)
   ("dbbca" "\\mathbb{A}" dynexp-surround-with-dollars)
   ("dbbca1" "\\mathbb{A}^1" dynexp-surround-with-dollars)
   ("dbbca2" "\\mathbb{A}^2" dynexp-surround-with-dollars)
   ("dbbca3" "\\mathbb{A}^3" dynexp-surround-with-dollars)
   ("dbbcam" "\\mathbb{A}^m" dynexp-surround-with-dollars)
   ("dbbcan" "\\mathbb{A}^n" dynexp-surround-with-dollars)
   ("dbbcb" "\\mathbb{B}" dynexp-surround-with-dollars)
   ("dbbcb1" "\\mathbb{B}^1" dynexp-surround-with-dollars)
   ("dbbcb2" "\\mathbb{B}^2" dynexp-surround-with-dollars)
   ("dbbcb3" "\\mathbb{B}^3" dynexp-surround-with-dollars)
   ("dbbcbm" "\\mathbb{B}^m" dynexp-surround-with-dollars)
   ("dbbcbn" "\\mathbb{B}^n" dynexp-surround-with-dollars)
   ("dbbcc" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("dbbcc1" "\\mathbb{C}^1" dynexp-surround-with-dollars)
   ("dbbcc2" "\\mathbb{C}^2" dynexp-surround-with-dollars)
   ("dbbcc3" "\\mathbb{C}^3" dynexp-surround-with-dollars)
   ("dbbccm" "\\mathbb{C}^m" dynexp-surround-with-dollars)
   ("dbbccn" "\\mathbb{C}^n" dynexp-surround-with-dollars)
   ("dbbcd" "\\mathbb{D}" dynexp-surround-with-dollars)
   ("dbbcd1" "\\mathbb{D}^1" dynexp-surround-with-dollars)
   ("dbbcd2" "\\mathbb{D}^2" dynexp-surround-with-dollars)
   ("dbbcd3" "\\mathbb{D}^3" dynexp-surround-with-dollars)
   ("dbbcdm" "\\mathbb{D}^m" dynexp-surround-with-dollars)
   ("dbbcdn" "\\mathbb{D}^n" dynexp-surround-with-dollars)
   ("dbbce" "\\mathbb{E}" dynexp-surround-with-dollars)
   ("dbbce1" "\\mathbb{E}^1" dynexp-surround-with-dollars)
   ("dbbce2" "\\mathbb{E}^2" dynexp-surround-with-dollars)
   ("dbbce3" "\\mathbb{E}^3" dynexp-surround-with-dollars)
   ("dbbcem" "\\mathbb{E}^m" dynexp-surround-with-dollars)
   ("dbbcen" "\\mathbb{E}^n" dynexp-surround-with-dollars)
   ("dbbcf" "\\mathbb{F}" dynexp-surround-with-dollars)
   ("dbbcf1" "\\mathbb{F}^1" dynexp-surround-with-dollars)
   ("dbbcf2" "\\mathbb{F}^2" dynexp-surround-with-dollars)
   ("dbbcf3" "\\mathbb{F}^3" dynexp-surround-with-dollars)
   ("dbbcfm" "\\mathbb{F}^m" dynexp-surround-with-dollars)
   ("dbbcfn" "\\mathbb{F}^n" dynexp-surround-with-dollars)
   ("dbbcg" "\\mathbb{G}" dynexp-surround-with-dollars)
   ("dbbcg1" "\\mathbb{G}^1" dynexp-surround-with-dollars)
   ("dbbcg2" "\\mathbb{G}^2" dynexp-surround-with-dollars)
   ("dbbcg3" "\\mathbb{G}^3" dynexp-surround-with-dollars)
   ("dbbcgm" "\\mathbb{G}^m" dynexp-surround-with-dollars)
   ("dbbcgn" "\\mathbb{G}^n" dynexp-surround-with-dollars)
   ("dbbch" "\\mathbb{H}" dynexp-surround-with-dollars)
   ("dbbch1" "\\mathbb{H}^1" dynexp-surround-with-dollars)
   ("dbbch2" "\\mathbb{H}^2" dynexp-surround-with-dollars)
   ("dbbch3" "\\mathbb{H}^3" dynexp-surround-with-dollars)
   ("dbbchm" "\\mathbb{H}^m" dynexp-surround-with-dollars)
   ("dbbchn" "\\mathbb{H}^n" dynexp-surround-with-dollars)
   ("dbbci" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("dbbci1" "\\mathbb{I}^1" dynexp-surround-with-dollars)
   ("dbbci2" "\\mathbb{I}^2" dynexp-surround-with-dollars)
   ("dbbci3" "\\mathbb{I}^3" dynexp-surround-with-dollars)
   ("dbbcim" "\\mathbb{I}^m" dynexp-surround-with-dollars)
   ("dbbcin" "\\mathbb{I}^n" dynexp-surround-with-dollars)
   ("dbbcj" "\\mathbb{J}" dynexp-surround-with-dollars)
   ("dbbcj1" "\\mathbb{J}^1" dynexp-surround-with-dollars)
   ("dbbcj2" "\\mathbb{J}^2" dynexp-surround-with-dollars)
   ("dbbcj3" "\\mathbb{J}^3" dynexp-surround-with-dollars)
   ("dbbcjm" "\\mathbb{J}^m" dynexp-surround-with-dollars)
   ("dbbcjn" "\\mathbb{J}^n" dynexp-surround-with-dollars)
   ("dbbck" "\\mathbb{K}" dynexp-surround-with-dollars)
   ("dbbck1" "\\mathbb{K}^1" dynexp-surround-with-dollars)
   ("dbbck2" "\\mathbb{K}^2" dynexp-surround-with-dollars)
   ("dbbck3" "\\mathbb{K}^3" dynexp-surround-with-dollars)
   ("dbbckm" "\\mathbb{K}^m" dynexp-surround-with-dollars)
   ("dbbckn" "\\mathbb{K}^n" dynexp-surround-with-dollars)
   ("dbbcl" "\\mathbb{L}" dynexp-surround-with-dollars)
   ("dbbcl1" "\\mathbb{L}^1" dynexp-surround-with-dollars)
   ("dbbcl2" "\\mathbb{L}^2" dynexp-surround-with-dollars)
   ("dbbcl3" "\\mathbb{L}^3" dynexp-surround-with-dollars)
   ("dbbclm" "\\mathbb{L}^m" dynexp-surround-with-dollars)
   ("dbbcln" "\\mathbb{L}^n" dynexp-surround-with-dollars)
   ("dbbcm" "\\mathbb{M}" dynexp-surround-with-dollars)
   ("dbbcm1" "\\mathbb{M}^1" dynexp-surround-with-dollars)
   ("dbbcm2" "\\mathbb{M}^2" dynexp-surround-with-dollars)
   ("dbbcm3" "\\mathbb{M}^3" dynexp-surround-with-dollars)
   ("dbbcmm" "\\mathbb{M}^m" dynexp-surround-with-dollars)
   ("dbbcmn" "\\mathbb{M}^n" dynexp-surround-with-dollars)
   ("dbbcn" "\\mathbb{N}" dynexp-surround-with-dollars)
   ("dbbcn1" "\\mathbb{N}^1" dynexp-surround-with-dollars)
   ("dbbcn2" "\\mathbb{N}^2" dynexp-surround-with-dollars)
   ("dbbcn3" "\\mathbb{N}^3" dynexp-surround-with-dollars)
   ("dbbcnm" "\\mathbb{N}^m" dynexp-surround-with-dollars)
   ("dbbcnn" "\\mathbb{N}^n" dynexp-surround-with-dollars)
   ("dbbco" "\\mathbb{O}" dynexp-surround-with-dollars)
   ("dbbco1" "\\mathbb{O}^1" dynexp-surround-with-dollars)
   ("dbbco2" "\\mathbb{O}^2" dynexp-surround-with-dollars)
   ("dbbco3" "\\mathbb{O}^3" dynexp-surround-with-dollars)
   ("dbbcom" "\\mathbb{O}^m" dynexp-surround-with-dollars)
   ("dbbcon" "\\mathbb{O}^n" dynexp-surround-with-dollars)
   ("dbbcp" "\\mathbb{P}" dynexp-surround-with-dollars)
   ("dbbcp1" "\\mathbb{P}^1" dynexp-surround-with-dollars)
   ("dbbcp2" "\\mathbb{P}^2" dynexp-surround-with-dollars)
   ("dbbcp3" "\\mathbb{P}^3" dynexp-surround-with-dollars)
   ("dbbcpm" "\\mathbb{P}^m" dynexp-surround-with-dollars)
   ("dbbcpn" "\\mathbb{P}^n" dynexp-surround-with-dollars)
   ("dbbcq" "\\mathbb{Q}" dynexp-surround-with-dollars)
   ("dbbcq1" "\\mathbb{Q}^1" dynexp-surround-with-dollars)
   ("dbbcq2" "\\mathbb{Q}^2" dynexp-surround-with-dollars)
   ("dbbcq3" "\\mathbb{Q}^3" dynexp-surround-with-dollars)
   ("dbbcqm" "\\mathbb{Q}^m" dynexp-surround-with-dollars)
   ("dbbcqn" "\\mathbb{Q}^n" dynexp-surround-with-dollars)
   ("dbbcr" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("dbbcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars)
   ("dbbcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars)
   ("dbbcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars)
   ("dbbcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars)
   ("dbbcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars)
   ("dbbcs" "\\mathbb{S}" dynexp-surround-with-dollars)
   ("dbbcs1" "\\mathbb{S}^1" dynexp-surround-with-dollars)
   ("dbbcs2" "\\mathbb{S}^2" dynexp-surround-with-dollars)
   ("dbbcs3" "\\mathbb{S}^3" dynexp-surround-with-dollars)
   ("dbbcsm" "\\mathbb{S}^m" dynexp-surround-with-dollars)
   ("dbbcsn" "\\mathbb{S}^n" dynexp-surround-with-dollars)
   ("dbbct" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("dbbct1" "\\mathbb{T}^1" dynexp-surround-with-dollars)
   ("dbbct2" "\\mathbb{T}^2" dynexp-surround-with-dollars)
   ("dbbct3" "\\mathbb{T}^3" dynexp-surround-with-dollars)
   ("dbbctm" "\\mathbb{T}^m" dynexp-surround-with-dollars)
   ("dbbctn" "\\mathbb{T}^n" dynexp-surround-with-dollars)
   ("dbbcu" "\\mathbb{U}" dynexp-surround-with-dollars)
   ("dbbcu1" "\\mathbb{U}^1" dynexp-surround-with-dollars)
   ("dbbcu2" "\\mathbb{U}^2" dynexp-surround-with-dollars)
   ("dbbcu3" "\\mathbb{U}^3" dynexp-surround-with-dollars)
   ("dbbcum" "\\mathbb{U}^m" dynexp-surround-with-dollars)
   ("dbbcun" "\\mathbb{U}^n" dynexp-surround-with-dollars)
   ("dbbcv" "\\mathbb{V}" dynexp-surround-with-dollars)
   ("dbbcv1" "\\mathbb{V}^1" dynexp-surround-with-dollars)
   ("dbbcv2" "\\mathbb{V}^2" dynexp-surround-with-dollars)
   ("dbbcv3" "\\mathbb{V}^3" dynexp-surround-with-dollars)
   ("dbbcvm" "\\mathbb{V}^m" dynexp-surround-with-dollars)
   ("dbbcvn" "\\mathbb{V}^n" dynexp-surround-with-dollars)
   ("dbbcw" "\\mathbb{W}" dynexp-surround-with-dollars)
   ("dbbcw1" "\\mathbb{W}^1" dynexp-surround-with-dollars)
   ("dbbcw2" "\\mathbb{W}^2" dynexp-surround-with-dollars)
   ("dbbcw3" "\\mathbb{W}^3" dynexp-surround-with-dollars)
   ("dbbcwm" "\\mathbb{W}^m" dynexp-surround-with-dollars)
   ("dbbcwn" "\\mathbb{W}^n" dynexp-surround-with-dollars)
   ("dbbcx" "\\mathbb{X}" dynexp-surround-with-dollars)
   ("dbbcx1" "\\mathbb{X}^1" dynexp-surround-with-dollars)
   ("dbbcx2" "\\mathbb{X}^2" dynexp-surround-with-dollars)
   ("dbbcx3" "\\mathbb{X}^3" dynexp-surround-with-dollars)
   ("dbbcxm" "\\mathbb{X}^m" dynexp-surround-with-dollars)
   ("dbbcxn" "\\mathbb{X}^n" dynexp-surround-with-dollars)
   ("dbbcy" "\\mathbb{Y}" dynexp-surround-with-dollars)
   ("dbbcy1" "\\mathbb{Y}^1" dynexp-surround-with-dollars)
   ("dbbcy2" "\\mathbb{Y}^2" dynexp-surround-with-dollars)
   ("dbbcy3" "\\mathbb{Y}^3" dynexp-surround-with-dollars)
   ("dbbcym" "\\mathbb{Y}^m" dynexp-surround-with-dollars)
   ("dbbcyn" "\\mathbb{Y}^n" dynexp-surround-with-dollars)
   ("dbbcz" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("dbbcz1" "\\mathbb{Z}^1" dynexp-surround-with-dollars)
   ("dbbcz2" "\\mathbb{Z}^2" dynexp-surround-with-dollars)
   ("dbbcz3" "\\mathbb{Z}^3" dynexp-surround-with-dollars)
   ("dbbczm" "\\mathbb{Z}^m" dynexp-surround-with-dollars)
   ("dbbczn" "\\mathbb{Z}^n" dynexp-surround-with-dollars)
   ("dbc" "\\mathbf{c}" dynexp-surround-with-dollars)
   ("dbca" "\\mathbf{A}" dynexp-surround-with-dollars)
   ("dbcb" "\\mathbf{B}" dynexp-surround-with-dollars)
   ("dbcc" "\\mathbf{C}" dynexp-surround-with-dollars)
   ("dbcd" "\\mathbf{D}" dynexp-surround-with-dollars)
   ("dbce" "\\mathbf{E}" dynexp-surround-with-dollars)
   ("dbcf" "\\mathbf{F}" dynexp-surround-with-dollars)
   ("dbcg" "\\mathbf{G}" dynexp-surround-with-dollars)
   ("dbch" "\\mathbf{H}" dynexp-surround-with-dollars)
   ("dbci" "\\mathbf{I}" dynexp-surround-with-dollars)
   ("dbcj" "\\mathbf{J}" dynexp-surround-with-dollars)
   ("dbck" "\\mathbf{K}" dynexp-surround-with-dollars)
   ("dbcl" "\\mathbf{L}" dynexp-surround-with-dollars)
   ("dbcm" "\\mathbf{M}" dynexp-surround-with-dollars)
   ("dbcn" "\\mathbf{N}" dynexp-surround-with-dollars)
   ("dbco" "\\mathbf{O}" dynexp-surround-with-dollars)
   ("dbcp" "\\mathbf{P}" dynexp-surround-with-dollars)
   ("dbcq" "\\mathbf{Q}" dynexp-surround-with-dollars)
   ("dbcr" "\\mathbf{R}" dynexp-surround-with-dollars)
   ("dbcs" "\\mathbf{S}" dynexp-surround-with-dollars)
   ("dbct" "\\mathbf{T}" dynexp-surround-with-dollars)
   ("dbcu" "\\mathbf{U}" dynexp-surround-with-dollars)
   ("dbcv" "\\mathbf{V}" dynexp-surround-with-dollars)
   ("dbcw" "\\mathbf{W}" dynexp-surround-with-dollars)
   ("dbcx" "\\mathbf{X}" dynexp-surround-with-dollars)
   ("dbcy" "\\mathbf{Y}" dynexp-surround-with-dollars)
   ("dbcz" "\\mathbf{Z}" dynexp-surround-with-dollars)
   ("dbd" "\\mathbf{d}" dynexp-surround-with-dollars)
   ("dbe" "\\mathbf{e}" dynexp-surround-with-dollars)
   ("dbf" "\\mathbf{f}" dynexp-surround-with-dollars)
   ("dbg" "\\mathbf{g}" dynexp-surround-with-dollars)
   ("dbh" "\\mathbf{h}" dynexp-surround-with-dollars)
   ("dbi" "\\mathbf{i}" dynexp-surround-with-dollars)
   ("dbj" "\\mathbf{j}" dynexp-surround-with-dollars)
   ("dbk" "\\mathbf{k}" dynexp-surround-with-dollars)
   ("dbl" "\\mathbf{l}" dynexp-surround-with-dollars)
   ("dbm" "\\mathbf{m}" dynexp-surround-with-dollars)
   ("dbn" "\\mathbf{n}" dynexp-surround-with-dollars)
   ("dbo" "\\mathbf{o}" dynexp-surround-with-dollars)
   ("dbp" "\\mathbf{p}" dynexp-surround-with-dollars)
   ("dbq" "\\mathbf{q}" dynexp-surround-with-dollars)
   ("dbr" "\\mathbf{r}" dynexp-surround-with-dollars)
   ("dbs" "\\mathbf{s}" dynexp-surround-with-dollars)
   ("dbsy" "$\\boldsymbol{<+++>}<++>" dynexp)
   ("dbsyu" "\\boldsymbol{}" dynexp-surround-with-dollars)
   ("dbt" "\\mathbf{t}" dynexp-surround-with-dollars)
   ("dbu" "\\mathbf{u}" dynexp-surround-with-dollars)
   ("dbv" "\\mathbf{v}" dynexp-surround-with-dollars)
   ("dbw" "\\mathbf{w}" dynexp-surround-with-dollars)
   ("dbx" "\\mathbf{x}" dynexp-surround-with-dollars)
   ("dby" "\\mathbf{y}" dynexp-surround-with-dollars)
   ("dbz" "\\mathbf{z}" dynexp-surround-with-dollars)
   ("dc" "c" dynexp-surround-with-dollars)
   ("dca" "A" dynexp-surround-with-dollars)
   ("dcart" "\\documentclass{article}" nil)
   ("dcarta4" "\\documentclass[a4paper]{article}" nil)
   ("dcb" "B" dynexp-surround-with-dollars)
   ("dcbook" "\\documentclass{book}" nil)
   ("dcc" "C" dynexp-surround-with-dollars)
   ("dcca" "\\mathcal{A}" dynexp-surround-with-dollars)
   ("dccb" "\\mathcal{B}" dynexp-surround-with-dollars)
   ("dccc" "\\mathcal{C}" dynexp-surround-with-dollars)
   ("dccd" "\\mathcal{D}" dynexp-surround-with-dollars)
   ("dcce" "\\mathcal{E}" dynexp-surround-with-dollars)
   ("dccf" "\\mathcal{F}" dynexp-surround-with-dollars)
   ("dccg" "\\mathcal{G}" dynexp-surround-with-dollars)
   ("dcch" "\\mathcal{H}" dynexp-surround-with-dollars)
   ("dcci" "\\mathcal{I}" dynexp-surround-with-dollars)
   ("dccj" "\\mathcal{J}" dynexp-surround-with-dollars)
   ("dcck" "\\mathcal{K}" dynexp-surround-with-dollars)
   ("dccl" "\\mathcal{L}" dynexp-surround-with-dollars)
   ("dccm" "\\mathcal{M}" dynexp-surround-with-dollars)
   ("dccn" "\\mathcal{N}" dynexp-surround-with-dollars)
   ("dcco" "\\mathcal{O}" dynexp-surround-with-dollars)
   ("dccp" "\\mathcal{P}" dynexp-surround-with-dollars)
   ("dccq" "\\mathcal{Q}" dynexp-surround-with-dollars)
   ("dccr" "\\mathcal{R}" dynexp-surround-with-dollars)
   ("dccs" "\\mathcal{S}" dynexp-surround-with-dollars)
   ("dcct" "\\mathcal{T}" dynexp-surround-with-dollars)
   ("dccu" "\\mathcal{U}" dynexp-surround-with-dollars)
   ("dccv" "\\mathcal{V}" dynexp-surround-with-dollars)
   ("dccw" "\\mathcal{W}" dynexp-surround-with-dollars)
   ("dccx" "\\mathcal{X}" dynexp-surround-with-dollars)
   ("dccy" "\\mathcal{Y}" dynexp-surround-with-dollars)
   ("dccz" "\\mathcal{Z}" dynexp-surround-with-dollars)
   ("dcd" "D" dynexp-surround-with-dollars)
   ("dce" "E" dynexp-surround-with-dollars)
   ("dcf" "F" dynexp-surround-with-dollars)
   ("dcg" "G" dynexp-surround-with-dollars)
   ("dch" "H" dynexp-surround-with-dollars)
   ("dci" "I" dynexp-surround-with-dollars)
   ("dcj" "J" dynexp-surround-with-dollars)
   ("dck" "K" dynexp-surround-with-dollars)
   ("dcl" "L" dynexp-surround-with-dollars)
   ("dclet" "\\documentclass{letter}" nil)
   ("dcm" "M" dynexp-surround-with-dollars)
   ("dcn" "N" dynexp-surround-with-dollars)
   ("dco" "O" dynexp-surround-with-dollars)
   ("dcp" "P" dynexp-surround-with-dollars)
   ("dcq" "Q" dynexp-surround-with-dollars)
   ("dcr" "R" dynexp-surround-with-dollars)
   ("dcrep" "\\documentclass{report}" nil)
   ("dcs" "S" dynexp-surround-with-dollars)
   ("dct" "T" dynexp-surround-with-dollars)
   ("dcu" "U" dynexp-surround-with-dollars)
   ("dcv" "V" dynexp-surround-with-dollars)
   ("dcw" "W" dynexp-surround-with-dollars)
   ("dcx" "X" dynexp-surround-with-dollars)
   ("dcy" "Y" dynexp-surround-with-dollars)
   ("dcz" "Z" dynexp-surround-with-dollars)
   ("dd" "d" dynexp-surround-with-dollars)
   ("dds" "\\ddots" nil)
   ("de" "e" dynexp-surround-with-dollars)
   ("def" ":=" nil)
   ("deq" "\\doteq" nil)
   ("df" "f" dynexp-surround-with-dollars)
   ("dfrbox" "\\fbox{\\fbox{\\parbox{2.0in}{
\\centerline{\\large \\bf type header} text }}}" nil)
   ("dg" "g" dynexp-surround-with-dollars)
   ("dgma" "\\mathfrak{a}" dynexp-surround-with-dollars)
   ("dgmas" "\\mathfrak{a}^{\\ast}" dynexp-surround-with-dollars)
   ("ax" "\\ast" dynexp-surround-with-dollars-unless-texmathp)
   ("dgmb" "\\mathfrak{b}" dynexp-surround-with-dollars)
   ("dgmbs" "\\mathfrak{b}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmc" "\\mathfrak{c}" dynexp-surround-with-dollars)
   ("dgmca" "\\mathfrak{A}" dynexp-surround-with-dollars)
   ("dgmcb" "\\mathfrak{B}" dynexp-surround-with-dollars)
   ("dgmcc" "\\mathfrak{C}" dynexp-surround-with-dollars)
   ("dgmcd" "\\mathfrak{D}" dynexp-surround-with-dollars)
   ("dgmce" "\\mathfrak{E}" dynexp-surround-with-dollars)
   ("dgmcf" "\\mathfrak{F}" dynexp-surround-with-dollars)
   ("dgmcg" "\\mathfrak{G}" dynexp-surround-with-dollars)
   ("dgmch" "\\mathfrak{H}" dynexp-surround-with-dollars)
   ("dgmci" "\\mathfrak{I}" dynexp-surround-with-dollars)
   ("dgmcj" "\\mathfrak{J}" dynexp-surround-with-dollars)
   ("dgmck" "\\mathfrak{K}" dynexp-surround-with-dollars)
   ("dgmcl" "\\mathfrak{L}" dynexp-surround-with-dollars)
   ("dgmcm" "\\mathfrak{M}" dynexp-surround-with-dollars)
   ("dgmcn" "\\mathfrak{N}" dynexp-surround-with-dollars)
   ("dgmco" "\\mathfrak{O}" dynexp-surround-with-dollars)
   ("dgmcp" "\\mathfrak{P}" dynexp-surround-with-dollars)
   ("dgmcq" "\\mathfrak{Q}" dynexp-surround-with-dollars)
   ("dgmcr" "\\mathfrak{R}" dynexp-surround-with-dollars)
   ("dgmcs" "\\mathfrak{S}" dynexp-surround-with-dollars)
   ("dgmct" "\\mathfrak{T}" dynexp-surround-with-dollars)
   ("dgmcu" "\\mathfrak{U}" dynexp-surround-with-dollars)
   ("dgmcv" "\\mathfrak{V}" dynexp-surround-with-dollars)
   ("dgmcw" "\\mathfrak{W}" dynexp-surround-with-dollars)
   ("dgmcx" "\\mathfrak{X}" dynexp-surround-with-dollars)
   ("dgmcy" "\\mathfrak{Y}" dynexp-surround-with-dollars)
   ("dgmcz" "\\mathfrak{Z}" dynexp-surround-with-dollars)
   ("dgmd" "\\mathfrak{d}" dynexp-surround-with-dollars)
   ("dgmds" "\\mathfrak{d}^{\\ast}" dynexp-surround-with-dollars)
   ("dgme" "\\mathfrak{e}" dynexp-surround-with-dollars)
   ("dgmes" "\\mathfrak{e}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmf" "\\mathfrak{f}" dynexp-surround-with-dollars)
   ("dgmfs" "\\mathfrak{f}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmg" "\\mathfrak{g}" dynexp-surround-with-dollars)
   ("dgmgs" "\\mathfrak{g}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmh" "\\mathfrak{h}" dynexp-surround-with-dollars)
   ("dgmhs" "\\mathfrak{h}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmi" "\\mathfrak{i}" dynexp-surround-with-dollars)
   ("dgmis" "\\mathfrak{i}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmj" "\\mathfrak{j}" dynexp-surround-with-dollars)
   ("dgmjs" "\\mathfrak{j}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmk" "\\mathfrak{k}" dynexp-surround-with-dollars)
   ("dgmks" "\\mathfrak{k}^{\\ast}" dynexp-surround-with-dollars)
   ("dgml" "\\mathfrak{l}" dynexp-surround-with-dollars)
   ("dgmls" "\\mathfrak{l}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmm" "\\mathfrak{m}" dynexp-surround-with-dollars)
   ("dgmms" "\\mathfrak{m}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmn" "\\mathfrak{n}" dynexp-surround-with-dollars)
   ("dgmns" "\\mathfrak{n}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmo" "\\mathfrak{o}" dynexp-surround-with-dollars)
   ("dgmos" "\\mathfrak{o}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmp" "\\mathfrak{p}" dynexp-surround-with-dollars)
   ("dgmps" "\\mathfrak{p}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmq" "\\mathfrak{q}" dynexp-surround-with-dollars)
   ("dgmqs" "\\mathfrak{q}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmr" "\\mathfrak{r}" dynexp-surround-with-dollars)
   ("dgmrs" "\\mathfrak{r}^{\\ast}" dynexp-surround-with-dollars)
   ("dgms" "\\mathfrak{s}" dynexp-surround-with-dollars)
   ("dgmss" "\\mathfrak{s}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmt" "\\mathfrak{t}" dynexp-surround-with-dollars)
   ("dgmts" "\\mathfrak{t}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmu" "\\mathfrak{u}" dynexp-surround-with-dollars)
   ("dgmus" "\\mathfrak{u}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmv" "\\mathfrak{v}" dynexp-surround-with-dollars)
   ("dgmvs" "\\mathfrak{v}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmw" "\\mathfrak{w}" dynexp-surround-with-dollars)
   ("dgmws" "\\mathfrak{w}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmx" "\\mathfrak{x}" dynexp-surround-with-dollars)
   ("dgmxs" "\\mathfrak{x}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmy" "\\mathfrak{y}" dynexp-surround-with-dollars)
   ("dgmys" "\\mathfrak{y}^{\\ast}" dynexp-surround-with-dollars)
   ("dgmz" "\\mathfrak{z}" dynexp-surround-with-dollars)
   ("dgmzs" "\\mathfrak{z}^{\\ast}" dynexp-surround-with-dollars)
   ("dh" "h" dynexp-surround-with-dollars)
   ("di" "i" dynexp-surround-with-dollars)
   ("difni" "\\infty" dynexp-surround-with-dollars)
   ("dinfi" "\\infty" dynexp-surround-with-dollars)
   ("minfi" "-\\infty" nil)
   ("disu" "{\\displaystyle" nil)
   ("divi" "\\div" nil)
   ("dj" "j" dynexp-surround-with-dollars)
   ("dju" "\\sqcup" nil)
   ("dk" "k" dynexp-surround-with-dollars)
   ("dl" "l" dynexp-surround-with-dollars)
   ("dm" "m" dynexp-surround-with-dollars)
   ("dmn" "\\dim" nil)
   ("dn" "n" dynexp-surround-with-dollars)
   ("doo" "o" dynexp-surround-with-dollars)
   ("dopcc" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("dopci" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("dopcr" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("dopcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars)
   ("dopcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars)
   ("dopcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars)
   ("dopcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars)
   ("dopcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars)
   ("dopct" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("dopcz" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("dopso3" "\\operatorname{so(3)}" dynexp-surround-with-dollars)
   ("dovstcpp" "\\overset{\\longrightarrow}{\\text{PP}}" dynexp-surround-with-dollars)
   ("dovstcpq" "$\\overset{\\longrightarrow}{\\text{PQ}}" nil)
   ("dovv" "\\vec{v}" dynexp-surround-with-dollars)
   ("dp" "p" dynexp-surround-with-dollars)
   ("dpdzy" "\\partial z/\\partial y" dynexp-surround-with-dollars)
   ("dq" "q" dynexp-surround-with-dollars)
   ("dr" "r" dynexp-surround-with-dollars)
   ("drpl" "\\mathbb{R}_+" dynexp-surround-with-dollars)
   ("drplt" "\\mathbb{R}_+^times" dynexp-surround-with-dollars)
   ("ds" "s" dynexp-surround-with-dollars)
   ("dsc" "\\,\\frac{d s}{2 \\pi i}" nil)
   ("dsp" "\\qquad" nil)
   ("dsz" " \\displaystyle" nil)
   ("dt" "t" dynexp-surround-with-dollars)
   ("dti" "\\,d^\\times" nil)
   ("dtriap" "(a_1, a_2, a_3)" dynexp-surround-with-dollars)
   ("dtsq" "T^\\ast Q" dynexp-surround-with-dollars)
   ("dtsqq" "T^{\\ast}_{q} Q" dynexp-surround-with-dollars)
   ("dtt" "\\det" nil)
   ("dgg" "\\deg" nil)
   ("du" "u" dynexp-surround-with-dollars)
   ("dv" "v" dynexp-surround-with-dollars)
   ("dw" "w" dynexp-surround-with-dollars)
   ("dx" "x" dynexp-surround-with-dollars)
   ("dxa" "\\alpha" dynexp-surround-with-dollars)
   ("dxb" "\\beta" dynexp-surround-with-dollars)
   ("dxc" "\\chi" dynexp-surround-with-dollars)
   ("dxcd" "\\Delta" dynexp-surround-with-dollars)
   ("dxcg" "\\Gamma" dynexp-surround-with-dollars)
   ("dxcl" "\\Lambda" dynexp-surround-with-dollars)
   ("dxco" "\\Omega" dynexp-surround-with-dollars)
   ("dxcp" "\\Pi" dynexp-surround-with-dollars)
   ("dxcph" "\\Phi" dynexp-surround-with-dollars)
   ("dxcps" "\\Psi" dynexp-surround-with-dollars)
   ("dxcs" "\\Sigma" dynexp-surround-with-dollars)
   ("dxcth" "\\Theta" dynexp-surround-with-dollars)
   ("dxcu" "\\Upsilon" dynexp-surround-with-dollars)
   ("dxcx" "\\Xi" dynexp-surround-with-dollars)
   ("dxd" "\\delta" dynexp-surround-with-dollars)
   ("dxdt" "dx/dt" nil)
   ("dxdy" "\\,dx\\,dy" nil)
   ("dxdydz" "\\,dx\\,dy\\,dz" nil)
   ("dxe" "\\eps" dynexp-surround-with-dollars)
   ("dxet" "\\eta" dynexp-surround-with-dollars)
   ("dxg" "\\gamma" dynexp-surround-with-dollars)
   ("dxio" "\\iota" dynexp-surround-with-dollars)
   ("dxk" "\\kappa" dynexp-surround-with-dollars)
   ("dxl" "\\lambda" dynexp-surround-with-dollars)
   ("dxm" "\\mu" dynexp-surround-with-dollars)
   ("dxn" "\\nu" dynexp-surround-with-dollars)
   ("dxo" "\\omega" dynexp-surround-with-dollars)
   ("dxp" "\\pi" dynexp-surround-with-dollars)
   ("dxph" "\\phi" dynexp-surround-with-dollars)
   ("dxps" "\\psi" dynexp-surround-with-dollars)
   ("dxpyq" "x^2 + y^2" dynexp-surround-with-dollars)
   ("dxr" "\\rho" dynexp-surround-with-dollars)
   ("dxs" "\\sigma" dynexp-surround-with-dollars)
   ("dxt" "\\tau" dynexp-surround-with-dollars)
   ("dxth" "\\theta" dynexp-surround-with-dollars)
   ("dxu" "\\upsilon" dynexp-surround-with-dollars)
   ("dxve" "\\varepsilon" dynexp-surround-with-dollars)
   ("dxvp" "\\varpi" dynexp-surround-with-dollars)
   ("dxvph" "\\varphi" dynexp-surround-with-dollars)
   ("dxvr" "\\varrho" dynexp-surround-with-dollars)
   ("dxvs" "\\varsigma" dynexp-surround-with-dollars)
   ("dxvth" "\\vartheta" dynexp-surround-with-dollars)
   ("dxx" "\\xi" dynexp-surround-with-dollars)
   ("dxyp" "(x, y)" dynexp-surround-with-dollars)
   ("dxyzp" "(x, y, z)" dynexp-surround-with-dollars)
   ("dxz" "\\zeta" dynexp-surround-with-dollars)
   ("dy" "y" dynexp-surround-with-dollars)
   ("dydt" "dy/dt" nil)
   ("dz" "z" dynexp-surround-with-dollars)
   ("dzdt" "dz/dt" nil)
   ("eac" "\\end{acknowledgment}
" nil)
   ("eal" "\\end{align}
" nil)
   ("eala" "\\end{alignat}
" nil)
   ("ealas" "\\end{alignat*}
" nil)
   ("eald" "\\end{aligned}
" nil)
   ("ealda" "\\end{alignedat}
" nil)
   ("ealg" "\\end{algorithm}
" nil)
   ("eals" "\\end{align*}
" nil)
   ("eb" "}" nil)
   ("ebib" "\\end{thebibliography}" nil)
   ("ebk" "]" nil)
   ("ecas" "\\end{cases}<+++>" dynexp)
   ("eclm" "\\end{claim}
" nil)
   ("ecmnt" "\\end{comment}" nil)
   ("ecncl" "\\end{conclusion}
" nil)
   ("ecnd" "\\end{condition}
" nil)
   ("ecnj" "\\end{conjecture}
" nil)
   ("ecor" "\\end{corollary}
" nil)
   ("ecrit" "\\end{criterion}
" nil)
   ("ectr" "\\end{center}" nil)
   ("edfn" "\\end{definition}
" nil)
   ("edma" "\\end{displaymath}
" nil)
   ("edo" "\\end{document}" nil)
   ("edp" "\\]" nil)
   ("eds" "\\end{description}" nil)
   ("eea" "\\end{array}" nil)
   ("een" "\\end{enumerate}" nil)
   ("eeq" "\\end{equation}" nil)
   ("eesb" "\\end{Sb}" nil)
   ("eesp" "\\end{Sp}" nil)
   ("eex" "\\end{example}
" nil)
   ("eexe" "\\end{exercise}
" nil)
   ("efig" "\\end{figure}" nil)
   ("efll" "\\end{flushleft}" nil)
   ("eflr" "\\end{flushright}" nil)
   ("efu" "\\efrac{<+++>}{<++>}<++>" dynexp)
   ("ega" "\\end{gather}
" nil)
   ("egad" "\\end{gathered}
" nil)
   ("egas" "\\end{gather*}
" nil)
   ("eit" "\\/}" nil)
   ("eitm" "\\end{itemize}" nil)
   ("elem" "\\end{lemma}
" nil)
   ("ema" "\\end{math}" nil)
   ("emlt" "\\end{multline}
" nil)
   ("emlts" "\\end{multline*}
" nil)
   ("emp" "\\varnothing" nil)
   ("empa" "\\emptyset" nil)
   ("empg" "\\end{minipage}" nil)
   ("xdo" "\\externaldocument{<+++>}<++>" dynexp)
   ("en" "\\operatorname{End}" dynexp-math-only)
   ("au" "\\operatorname{Aut}" dynexp-math-only)
   ("sy" "\\operatorname{Sym}" dynexp-math-only)
   ("nd" "\\operatorname{Ind}" dynexp-math-only)
   ("emu" "\\emph{<+++>}<++>" dynexp)
   ("rsp" "(resp.\\ <+++>)<++>" dynexp)
   ("enota" "\\end{notation}
" nil)
   ("enote" "\\end{note}
" nil)
   ("ensp" "\\enspace" nil)
   ("eo" "\\in" nil)
   ("ep" ")" nil)
   ("eprf" "\\end{proof}
" nil)
   ("eprob" "\\end{problem}
" nil)
   ("eprop" "\\end{proposition}
" nil)
   ("eq" "=" nil)
   ("sme" "\\simeq" nil)
   ("eqa" "\\end{eqnarray}" nil)
   ("eqad" "\\begin{equation}
 \\begin{aligned}
 {}&a = b + c \\\\
 {}&d = e + f + g
\\end{aligned}
\\end{equation}
" nil)
   ("eqanu" "\\begin{align}
x^2   &= y+1    \\\\
x^2+1 &= u+v
\\end{align}
" nil)
   ("eqas" "\\end{eqnarray*}" nil)
   ("eqaun" "\\begin{align*}
x^2   &= y+1 \\\\
x^2+1 &= u+v
\\end{align*}
" nil)
   ("eqbox" "\\begin{equation}
\\fbox{\\parbox{.7in}{$\\displaystyle{\\frac{x^2 + 1}{5} = y}$ }}
\\end{equation}
" nil)
   ("eqd" "oteq" nil)
   ("eqlbr" "\\begin{equation}
\\left. 
\\begin{aligned} 
&x = y           \\\\ 
&a = b^2 + b + 1 
\\end{aligned} 
\\right\\}
\\end{equation}
" nil)
   ("eqm" "''" nil)
   ("eqq" "&=&" nil)
   ("eqsp" "\\begin{equation}
\\begin{split}
a  =  b &+ c + (c + d)  \\\\
        &{}- e + f
\\end{split}
\\end{equation}
" nil)
   ("eqst" "\\end{question}
" nil)
   ("eqt" "\\end{quotation}" nil)
   ("eqtxt" "\\[
\\sum ^n _{ i = 1 } x^2 _i + y^2 _i \\geq 0 \\quad
 \\text{for all real numbers $ x _i $ and $ y _i $}
\\]
" nil)
   ("equn" "\\[
F(b)-F(a)=\\int^b_af(x)\\, dx
\\]
" nil)
   ("eqv" "\\equiv" nil)
   ("eqvt" "\\Leftrightarrow" nil)
   ("ermk" "\\end{remark}
" nil)
   ("esol" "\\end{solution}
" nil)
   ("esplt" "\\end{split}
" nil)
   ("esum" "\\end{summary}
" nil)
   ("etab" "\\end{table}" nil)
   ("etb" "\\end{tabbing}" nil)
   ("ethm" "\\end{theorem}
" nil)
   ("etr" "\\end{tabular}" nil)
   ("evrb" "\\end{verbatim}" nil)
   ("ex" "\\exp" nil)
   ("exca" "\\end{xca}
" nil)
   ("excb" "\\end{xcb}
" nil)
   ("f12" "\\frac{1}{2}" nil)
   ("f13" "\\frac{1}{3}" nil)
   ("f14" "\\frac{1}{4}" nil)
   ("f23" "\\frac{2}{3}" nil)
   ("f32" "\\frac{3}{2}" nil)
   ("f34" "\\frac{3}{4}" nil)
   ("tf12" "\\tfrac{1}{2}" nil)
   ("tf13" "\\tfrac{1}{3}" nil)
   ("tf14" "\\tfrac{1}{4}" nil)
   ("tf23" "\\tfrac{2}{3}" nil)
   ("tf32" "\\tfrac{3}{2}" nil)
   ("tf34" "\\tfrac{3}{4}" nil)
   ("fa" "\\forall" nil)
   ("fbm" "\\fbox{\\begin{minipage}{.9\\linewidth}
<+++>
\\end{minipage}}<++>" dynexp)
   ("fdbfi" "\\newcommand{\\bfi}{\\bfseries\\itshape}" nil)
   ("fddt" "\\frac{d}{dt}" nil)
   ("fdudt" "\\frac{du}{dt}" nil)
   ("fdxdt" "\\frac{dx}{dt}" nil)
   ("fdydt" "\\frac{dy}{dt}" nil)
   ("fdzdt" "\\frac{dz}{dt}" nil)
   ("figu" "\\begin{figure}[ht]
\\begin{center}
\\includegraphics{}
\\caption{\\label{}}
\\end{center}
\\end{figure}" nil)
   ("fl" "\\lfloor <+++> \\rfloor<++>" dynexp)
   ("flr" "\\lfloor <+++> \\rfloor<++>" dynexp)
   ("flt" "\\flat" nil)
   ("fof" "}{" nil)
   ("fpdu" "\\frac{\\partial}{\\partial" nil)
   ("fps" "\\frac{\\partial^2}
        {\\partial x \\partial y}" nil)
   ("fpt" "\\frac{\\partial^3}
        {\\partial x \\partial y \\partial z}" nil)
   ("fpu" "\\frac{\\partial}{\\partial <+++>}<++>" dynexp)
   ("fpx" "\\frac{\\partial}{\\partial x}" nil)
   ("fpy" "\\frac{\\partial}{\\partial y}" nil)
   ("fpzx" "\\frac{\\partial z}{\\partial x}" nil)
   ("frbox" "\\fbox{\\parbox{2.0in}{\\centerline{\\large \\bf type header} text }}" nil)
   ("frboxn" "\\fbox{\\parbox{2.0in}{{\\large \\bf Note: \\,} text }}" nil)
   ("fru" "\\frame{\\frametitle{<+++>}
<++>
}" dynexp)
   ("ftn" "\\footnote{<+++>}<++>" dynexp)
   ("ftnu" "\\footnote{<+++>}<++>" dynexp)
   ("fu" "\\frac{<+++>}{<++>}<++>" dynexp)
   ("f1" "\\frac{1}{<+++>}<++>" dynexp)
   ("zu" "\\Of{<+++>}{<++>}<++>" dynexp)
   ("functino" "function" nil)
   ("isomorphims" "isomorphism" nil)
   ("subspcae" "subspace" nil)
   ("gc" "\\gcd" nil)
   ("gcdu" "\\gcd(<+++>)<++>" dynexp)
   ("lcmu" "\\lcm(<+++>)<++>" dynexp)
   ("gce" "\\`{E}" nil)
   ("ge" "\\`{e}" nil)
   ("gij" "g_{ij}" nil)
   ("gma" "\\mathfrak{a}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmas" "\\mathfrak{a}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmb" "\\mathfrak{b}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmbs" "\\mathfrak{b}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmc" "\\mathfrak{c}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmca" "\\mathfrak{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcb" "\\mathfrak{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcc" "\\mathfrak{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcd" "\\mathfrak{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmce" "\\mathfrak{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcf" "\\mathfrak{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcg" "\\mathfrak{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmch" "\\mathfrak{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmci" "\\mathfrak{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcj" "\\mathfrak{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmck" "\\mathfrak{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcl" "\\mathfrak{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcm" "\\mathfrak{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcn" "\\mathfrak{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmco" "\\mathfrak{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcp" "\\mathfrak{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcq" "\\mathfrak{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcr" "\\mathfrak{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcs" "\\mathfrak{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmct" "\\mathfrak{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcu" "\\mathfrak{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcv" "\\mathfrak{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcw" "\\mathfrak{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcx" "\\mathfrak{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcy" "\\mathfrak{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmcz" "\\mathfrak{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmd" "\\mathfrak{d}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmds" "\\mathfrak{d}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gme" "\\mathfrak{e}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmes" "\\mathfrak{e}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmf" "\\mathfrak{f}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmfs" "\\mathfrak{f}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmg" "\\mathfrak{g}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmgs" "\\mathfrak{g}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmh" "\\mathfrak{h}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmhs" "\\mathfrak{h}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmi" "\\mathfrak{i}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmis" "\\mathfrak{i}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmj" "\\mathfrak{j}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmjs" "\\mathfrak{j}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmk" "\\mathfrak{k}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmks" "\\mathfrak{k}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gml" "\\mathfrak{l}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmls" "\\mathfrak{l}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmm" "\\mathfrak{m}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmms" "\\mathfrak{m}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmn" "\\mathfrak{n}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmns" "\\mathfrak{n}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmo" "\\mathfrak{o}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmos" "\\mathfrak{o}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmp" "\\mathfrak{p}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmps" "\\mathfrak{p}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmq" "\\mathfrak{q}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmqs" "\\mathfrak{q}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmr" "\\mathfrak{r}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmrs" "\\mathfrak{r}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gms" "\\mathfrak{s}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmso3" "\\mathfrak{so}(3)" nil)
   ("gmss" "\\mathfrak{s}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmt" "\\mathfrak{t}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmts" "\\mathfrak{t}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmu" "\\mathfrak{u}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmus" "\\mathfrak{u}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmv" "\\mathfrak{v}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmvs" "\\mathfrak{v}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmw" "\\mathfrak{w}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmws" "\\mathfrak{w}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmx" "\\mathfrak{x}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmxs" "\\mathfrak{x}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmy" "\\mathfrak{y}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmys" "\\mathfrak{y}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmz" "\\mathfrak{z}" dynexp-surround-with-dollars-unless-texmathp)
   ("gmzs" "\\mathfrak{z}^{\\ast}" dynexp-surround-with-dollars-unless-texmathp)
   ("gss" "\\ss" nil)
   ("gte" "\\geq" nil)
   ("h0" "^0" dynexp-delete-leading-space)
   ("h1" "^1" dynexp-delete-leading-space)
   ("hshr" "^!" dynexp-delete-leading-space)
   ("h10" "^{10}" dynexp-delete-leading-space)
   ("h12" "^{1/2}" dynexp-delete-leading-space)
   ("h13" "^{1/3}" dynexp-delete-leading-space)
   ("h14" "^{1/4}" dynexp-delete-leading-space)
   ("h34" "^{3/4}" dynexp-delete-leading-space)
   ("l12" "_{1/2}" dynexp-delete-leading-space)
   ("l13" "_{1/3}" dynexp-delete-leading-space)
   ("l14" "_{1/4}" dynexp-delete-leading-space)
   ("h2" "^2" dynexp-delete-leading-space)
   ("h23" "^{2/3}" dynexp-delete-leading-space)
   ("l23" "_{2/3}" dynexp-delete-leading-space)
   ("h3" "^3" dynexp-delete-leading-space)
   ("h32" "^{3/2}" dynexp-delete-leading-space)
   ("l32" "_{3/2}" dynexp-delete-leading-space)
   ("h4" "^4" dynexp-delete-leading-space)
   ("h5" "^5" dynexp-delete-leading-space)
   ("h6" "^6" dynexp-delete-leading-space)
   ("h7" "^7" dynexp-delete-leading-space)
   ("h8" "^8" dynexp-delete-leading-space)
   ("h9" "^9" dynexp-delete-leading-space)
   ("ha" "^a" dynexp-delete-leading-space)
   ("haf" "\\frac{1}{2}" nil)
   ("hb" "^b" dynexp-delete-leading-space)
   ("hba" "\\hbar" nil)
   ("hca" "^A" dynexp-delete-leading-space)
   ("hcb" "^B" dynexp-delete-leading-space)
   ("hcc" "^C" dynexp-delete-leading-space)
   ("hcd" "^D" dynexp-delete-leading-space)
   ("hce" "^E" dynexp-delete-leading-space)
   ("hcf" "^F" dynexp-delete-leading-space)
   ("hcg" "^G" dynexp-delete-leading-space)
   ("hch" "^H" dynexp-delete-leading-space)
   ("hchk" "^\\check" dynexp-delete-leading-space)
   ("hci" "^I" dynexp-delete-leading-space)
   ("hcj" "^J" dynexp-delete-leading-space)
   ("hck" "^K" dynexp-delete-leading-space)
   ("hcl" "^L" dynexp-delete-leading-space)
   ("hcm" "^M" dynexp-delete-leading-space)
   ("hcn" "^N" dynexp-delete-leading-space)
   ("hco" "^O" dynexp-delete-leading-space)
   ("hcp" "^P" dynexp-delete-leading-space)
   ("hcq" "^Q" dynexp-delete-leading-space)
   ("hcr" "^R" dynexp-delete-leading-space)
   ("hcs" "^S" dynexp-delete-leading-space)
   ("hct" "^T" dynexp-delete-leading-space)
   ("hcu" "^U" dynexp-delete-leading-space)
   ("hcv" "^V" dynexp-delete-leading-space)
   ("hcw" "^W" dynexp-delete-leading-space)
   ("hcx" "^X" dynexp-delete-leading-space)
   ("hcy" "^Y" dynexp-delete-leading-space)
   ("hcz" "^Z" dynexp-delete-leading-space)
   ("hd" "^d" dynexp-delete-leading-space)
   ("dgr" "\\dagger" nil)
   ("hdg" "^\\dagger" dynexp-delete-leading-space)
   ("hee" "^e" dynexp-delete-leading-space)
   ("hf" "^f" dynexp-delete-leading-space)
   ("hfi" "\\hfill" nil)
   ("hflt" "^\\flat" dynexp-delete-leading-space)
   ("lflt" "_\\flat" dynexp-delete-leading-space)
   ("hg" "^g" dynexp-delete-leading-space)
   ("hh" "^h" dynexp-delete-leading-space)
   ("hht" "{}^t" nil)
   ("hhu" "{}^{<+++>}<++>" dynexp)
   ("hi" "^i" dynexp-delete-leading-space)
   ("hifni" "^\\infty" dynexp-delete-leading-space)
   ("hij" "^{ij}" dynexp-delete-leading-space)
   ("hijk" "^{ijk}" dynexp-delete-leading-space)
   ("hinfi" "^\\infty" dynexp-delete-leading-space)
   ("hminfi" "^{-\\infty}" dynexp-delete-leading-space)
   ("hj" "^j" dynexp-delete-leading-space)
   ("hjk" "^{jk}" dynexp-delete-leading-space)
   ("hk" "^k" dynexp-delete-leading-space)
   ("hl" "^l" dynexp-delete-leading-space)
   ("hlin" "\\hline" nil)
   ("hm" "^m" dynexp-delete-leading-space)
   ("hm12" "^{-1/2}" dynexp-delete-leading-space)
   ("hm13" "^{-1/3}" dynexp-delete-leading-space)
   ("hm14" "^{-1/4}" dynexp-delete-leading-space)
   ("hm34" "^{-3/4}" dynexp-delete-leading-space)
   ("hm2" "^{-2}" dynexp-delete-leading-space)
   ("hmi" "^-" dynexp-delete-leading-space)
   ("hmo" "^{-1}" dynexp-delete-leading-space)
   ("hn" "^n" dynexp-delete-leading-space)
   ("ho" "^o" dynexp-delete-leading-space)
   ("hp" "^p" dynexp-delete-leading-space)
   ("hpl" "^+" dynexp-delete-leading-space)
   ("hpm" "^{\\pm}" dynexp-delete-leading-space)
   ("hplm" "^{\\pm}" dynexp-delete-leading-space)
   ("hmip" "^{\\mp}" dynexp-delete-leading-space)
   ("hmp" "^{\\mp}" dynexp-delete-leading-space)
   ("hpr" "^\\prime" dynexp-delete-leading-space)
   ("hprp" "^\\perp" dynexp-delete-leading-space)
   ("prp" "^\\perp" dynexp-delete-leading-space)
   ("hq" "^q" dynexp-delete-leading-space)
   ("hr" "^r" dynexp-delete-leading-space)
   ("hra" "\\hookrightarrow" nil)
   ("hs" "^s" dynexp-delete-leading-space)
   ("hshp" "^\\sharp" dynexp-delete-leading-space)
   ("lshp" "_\\sharp" dynexp-delete-leading-space)
   ("hskp" "\\hskip 2in" nil)
   ("hsp" "\\hspace{<+++>}<++>" dynexp)
   ("hspu" "\\hspace{<+++>}<++>" dynexp)
   ("hst" "^\\ast" dynexp-delete-leading-space)
   ("ht" "^t" dynexp-delete-leading-space)
   ("hti" "^\\times" dynexp-delete-leading-space)
   ;; ("sl2" "\\mathrm{SL}_2" dynexp-delete-leading-space-dynexp)
   ("sl2" "\\mathrm{SL}_2" nil)
   ("sl3" "\\mathrm{SL}_3" nil)
   ("sl4" "\\mathrm{SL}_4" nil)
   ("sln" "\\mathrm{SL}_n" nil)
   ("slm" "\\mathrm{SL}_m" nil)
   ("gl1" "\\mathrm{GL}_1" nil)
   ("gl2" "\\mathrm{GL}_2" nil)
   ("gl3" "\\mathrm{GL}_3" nil)
   ("gl4" "\\mathrm{GL}_4" nil)
   ("gln" "\\mathrm{GL}_n" nil)
   ("glm" "\\mathrm{GL}_m" nil)
   ("pgl2" "\\mathrm{PGL}_2" nil)
   ("pgl3" "\\mathrm{PGL}_3" nil)
   ("pgl4" "\\mathrm{PGL}_4" nil)
   ("pgln" "\\mathrm{PGL}_n" nil)
   ("pglm" "\\mathrm{PGL}_m" nil)
   ("tra" "\\trace" nil)
   ("trn" "\\transpose" nil)
   ("slu" "\\mathrm{SL}_{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("pglu" "\\mathrm{PGL}_{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("glu" "\\mathrm{GL}_{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("hu" "^{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("huu" "^u" dynexp-delete-leading-space)
   ("huc" "^c" dynexp-delete-leading-space)
   ("hv" "^v" dynexp-delete-leading-space)
   ("hve" "^\\vee" dynexp-delete-leading-space)
   ("hvst" "^\\star" dynexp-delete-leading-space)
   ("hw" "^w" dynexp-delete-leading-space)
   ("hwed" "^\\wedge" dynexp-delete-leading-space)
   ("hx" "^x" dynexp-delete-leading-space)
   ("hxa" "^\\alpha" dynexp-delete-leading-space)
   ("hxb" "^\\beta" dynexp-delete-leading-space)
   ("hxc" "^\\chi" dynexp-delete-leading-space)
   ("hxcd" "^\\Delta" dynexp-delete-leading-space)
   ("hxcg" "^\\Gamma" dynexp-delete-leading-space)
   ("hxcl" "^\\Lambda" dynexp-delete-leading-space)
   ("hxco" "^\\Omega" dynexp-delete-leading-space)
   ("hxcp" "^\\Pi" dynexp-delete-leading-space)
   ("hxcph" "^\\Phi" dynexp-delete-leading-space)
   ("hxcps" "^\\Psi" dynexp-delete-leading-space)
   ("hxcs" "^\\Sigma" dynexp-delete-leading-space)
   ("hxcth" "^\\Theta" dynexp-delete-leading-space)
   ("hxcu" "^\\Upsilon" dynexp-delete-leading-space)
   ("hxcx" "^\\Xi" dynexp-delete-leading-space)
   ("hxd" "^\\delta" dynexp-delete-leading-space)
   ("hxe" "^\\eps" dynexp-delete-leading-space)
   ("hxet" "^\\eta" dynexp-delete-leading-space)
   ("hxg" "^\\gamma" dynexp-delete-leading-space)
   ("hxio" "^\\iota" dynexp-delete-leading-space)
   ("hxk" "^\\kappa" dynexp-delete-leading-space)
   ("hxl" "^\\lambda" dynexp-delete-leading-space)
   ("hxm" "^\\mu" dynexp-delete-leading-space)
   ("hxn" "^\\nu" dynexp-delete-leading-space)
   ("hxo" "^\\omega" dynexp-delete-leading-space)
   ("hxp" "^\\pi" dynexp-delete-leading-space)
   ("hxph" "^\\phi" dynexp-delete-leading-space)
   ("hxps" "^\\psi" dynexp-delete-leading-space)
   ("hxr" "^\\rho" dynexp-delete-leading-space)
   ("hxs" "^\\sigma" dynexp-delete-leading-space)
   ("hxt" "^\\tau" dynexp-delete-leading-space)
   ("hxth" "^\\theta" dynexp-delete-leading-space)
   ("hxu" "^\\upsilon" dynexp-delete-leading-space)
   ("hxve" "^\\varepsilon" dynexp-delete-leading-space)
   ("hxvp" "^\\varpi" dynexp-delete-leading-space)
   ("hxvph" "^\\varphi" dynexp-delete-leading-space)
   ("hxvr" "^\\varrho" dynexp-delete-leading-space)
   ("hxvs" "^\\varsigma" dynexp-delete-leading-space)
   ("hxvth" "^\\vartheta" dynexp-delete-leading-space)
   ("hxx" "^\\xi" dynexp-delete-leading-space)
   ("hxz" "^\\zeta" dynexp-delete-leading-space)
   ("hy" "^y" dynexp-delete-leading-space)
   ("hz" "^z" dynexp-delete-leading-space)
   ("i10" "\\int^1_0" nil)
   ("i2xp0" "\\int^{2 \\pi}_0" nil)
   ("iba" "\\int^b_a" nil)
   ("idx" "\\index{<+++>}<++>" dynexp)
   ("idxu" "\\index{<+++>}<++>" dynexp)
   ("ifni" "\\infty" dynexp-surround-with-dollars-unless-texmathp)
   ("igr" "\\includegraphics{<+++>}<++>" dynexp)
   ("igru" "\\includegraphics{<+++>}<++>" dynexp)
   ("iinf" "\\int^\\infty_{- \\infty}" nil)
   ("ilcd" "\\int_D" nil)
   ("illu" "\\begin{figure}
\\begin{center}
       \\special{illustration } %add eps filename
\\caption{\\label{}}
\\end{center}
\\end{figure}" nil)
   ("ima" "\\Im" nil)
   ("imp" "\\Rightarrow" nil)
   ("impb" "\\Leftarrow" nil)
   ("impl" "\\implies" nil)
   ("infi" "\\infty" dynexp-surround-with-dollars-unless-texmathp)
   ("infm" "\\inf" nil)
   ("ini1" "\\bigcap^{n}_{i = 1}" nil)
   ("intc" "\\oint" nil)
   ("intd" "\\int \\!\\!\\! \\int" nil)
   ("ints" "\\cap" nil)
   ("intt" "\\int \\!\\!\\! \\int \\!\\!\\! \\int" nil)
   ("intxt" "\\intertext{<+++>}<++>" dynexp)
   ("intxtu" "\\intertext{<+++>}<++>" dynexp)
   ("ir3" "\\int_{\\mathbb{R}^3}" nil)
   ("iso" "\\cong" nil)
   ("itk" "\\int_{
\\substack{
<+++> 
}
}<++>" dynexp)
   ("itm" "\\item <+++>" dynexp)
   ("itmu" "\\item[<+++>] <++>" dynexp)
   ("itu" "{\\it<+++>}<++>" dynexp)
   ("iu" "\\int" nil)
   ("iul" "\\int_{
<+++> 
}<++>" dynexp)
   ("kr" "\\ker" nil)
   ("l0" "_0" dynexp-delete-leading-space)
   ("l1" "_1" dynexp-delete-leading-space)
   ("lshr" "_!" dynexp-delete-leading-space)
   ("l10" "_{10}" dynexp-delete-leading-space)
   ("l2" "_2" dynexp-delete-leading-space)
   ("l3" "_3" dynexp-delete-leading-space)
   ("l4" "_4" dynexp-delete-leading-space)
   ("l5" "_5" dynexp-delete-leading-space)
   ("l6" "_6" dynexp-delete-leading-space)
   ("l7" "_7" dynexp-delete-leading-space)
   ("l8" "_8" dynexp-delete-leading-space)
   ("l9" "_9" dynexp-delete-leading-space)
   ("la" "_a" dynexp-delete-leading-space)
   ("lb" "_b" dynexp-delete-leading-space)
   ("lbl" "\\label{<+++>}<++>" dynexp)
   ("lblu" "\\label{<+++>}<++>" dynexp)
   ("lbrk" "\\linebreak" nil)
   ("lc" "_c" dynexp-delete-leading-space)
   ("lca" "_A" dynexp-delete-leading-space)
   ("lcb" "_B" dynexp-delete-leading-space)
   ("lcc" "_C" dynexp-delete-leading-space)
   ("lcd" "_D" dynexp-delete-leading-space)
   ("lce" "_E" dynexp-delete-leading-space)
   ("lcf" "_F" dynexp-delete-leading-space)
   ("lcg" "_G" dynexp-delete-leading-space)
   ("lch" "_H" dynexp-delete-leading-space)
   ("lci" "_I" dynexp-delete-leading-space)
   ("lcj" "_J" dynexp-delete-leading-space)
   ("lck" "_K" dynexp-delete-leading-space)
   ("lcl" "_L" dynexp-delete-leading-space)
   ("lcn" "_N" dynexp-delete-leading-space)
   ("lco" "_O" dynexp-delete-leading-space)
   ("lcp" "_P" dynexp-delete-leading-space)
   ("lcq" "_Q" dynexp-delete-leading-space)
   ("lcr" "_R" dynexp-delete-leading-space)
   ("lcs" "_S" dynexp-delete-leading-space)
   ("lct" "_T" dynexp-delete-leading-space)
   ("lcu" "_U" dynexp-delete-leading-space)
   ("lcv" "_V" dynexp-delete-leading-space)
   ("lcw" "_W" dynexp-delete-leading-space)
   ("lcx" "_X" dynexp-delete-leading-space)
   ("lcy" "_Y" dynexp-delete-leading-space)
   ("lcz" "_Z" dynexp-delete-leading-space)
   ("ld" "_d" dynexp-delete-leading-space)
   ("mulitplicatino" "multiplication" nil)
   ("ldo" "\\left." nil)
   ("lds" "\\ldots" nil)
   ("le" "_e" dynexp-delete-leading-space)
   ("usign" "using" nil)
   ("lea" "\\leftarrow" nil)
   ("lla" "\\leftleftarrows" nil)
   ("lebk" "\\left[ <+++> \\right]<++>" dynexp)
   ("lebr" "\\left\\{ <+++> \\right\\}<++>" dynexp)
   ("lel" "\\left\\langle <+++> \\right\\rangle<++>" dynexp)
   ("lep" "\\left( <+++> \\right)<++>" dynexp)
   ("lequ" "\\begin{eqnarray}
\\lefteqn{} \\nonumber \\\\
& &
\\end{eqnarray}
" nil)
   ("lequs" "\\begin{eqnarray*}
\\lefteqn{}\\\\
& &
\\end{eqnarray*}" nil)
   ("lf" "_f" dynexp-delete-leading-space)
   ("lg" "_g" dynexp-delete-leading-space)
   ("lgn" "\\ln" nil)
   ("lh" "_h" dynexp-delete-leading-space)
   ("li" "_i" dynexp-delete-leading-space)
   ("li00" "\\lim_{(x,y) \\rightarrow (0,0)}" nil)
   ("liai" "\\lim_{a \\rightarrow \\infty}" nil)
   ;; ("lied" "\\pounds" nil)
   ("lifni" "_\\infty" dynexp-delete-leading-space)
   ("lij" "_{ij}" dynexp-delete-leading-space)
   ("lijk" "_{ijk}" dynexp-delete-leading-space)
   ("limi" "\\liminf" nil)
   ("limm" "\\lim" nil)
   ("lims" "\\limsup" nil)
   ("limu" "\\lim_{<+++>}<++>" dynexp)
   ("linfi" "_\\infty" dynexp-delete-leading-space)
   ("lminfi" "_{-\\infty}" dynexp-delete-leading-space)
   ("lixl0" "\\lim_{x \\rightarrow x_0}" nil)
   ("lj" "_j" dynexp-delete-leading-space)
   ("ljk" "_{jk}" dynexp-delete-leading-space)
   ("lk" "_k" dynexp-delete-leading-space)
   ("llb" "\\{<+++>\\}<++>" dynexp)
   ("lld" "\\left\\langle \\! \\left\\langle <+++> \\right\\rangle \\! \\right\\langle<++>" dynexp)
   ("lle" "\\langle <+++> \\rangle<++>" dynexp)
   ("llin" "\\leftline{<+++>}<++>" dynexp)
   ("llt" "\\left\\langle \\! \\left\\langle \\! \\left\\langle <+++> \\right\\rangle \\! \\right\\rangle \\! \\left\\rangle<++>" dynexp)
   ("lm" "_m" dynexp-delete-leading-space)
   ("lmi" "_-" dynexp-delete-leading-space)
   ("ln" "_n" dynexp-delete-leading-space)
   ("lo" "_o" dynexp-delete-leading-space)
   ("logg" "\\log" nil)
   ("lora" "\\longrightarrow" nil)
   ("lp" "_p" dynexp-delete-leading-space)
   ("lpl" "_+" dynexp-delete-leading-space)
   ("lpm" "_{\\pm}" dynexp-delete-leading-space)
   ("lmp" "_{\\mp}" dynexp-delete-leading-space)
   ("lq" "_q" dynexp-delete-leading-space)
   ("lr" "_r" dynexp-delete-leading-space)
   ("lra" "\\leftrightarrow" nil)
   ("lolra" "\\longleftrightarrow" nil)
   ("lola" "\\longleftarrow" nil)
   ("ls" "_s" dynexp-delete-leading-space)
   ("lsa" "\\leftsquigarrow" nil)
   ("lscl" "_{\\ell}" dynexp-delete-leading-space)
   ("hscl" "^{\\ell}" dynexp-delete-leading-space)
   ("lst" "_\\ast" dynexp-delete-leading-space)
   ("lt" "_t" dynexp-delete-leading-space)
   ("lte" "\\leq" nil)
   ("tlte" "\\trianglelefteqslant" nil)
   ("tgte" "\\trianglerighteqslant" nil)
   ("tlt" "\\triangleleft" nil)
   ("tgt" "\\triangleright" nil)
   ("lti" "\\ltimes" nil)
   ("ltx" "\\documentclass[reqno]{amsart} \\input{common.tex}

\\begin{document}

<+++>

\\bibliography{refs}{} \\bibliographystyle{plain}
\\end{document}
" dynexp-fold)
   ("lu" "_{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("lcm" "_M" dynexp-delete-leading-space-except-after-backslash)
   ("lul" "_l" dynexp-delete-leading-space)
   ("luu" "_u" dynexp-delete-leading-space)
   ("lv" "_v" dynexp-delete-leading-space)
   ("lve" "\\left\\lvert <+++> \\right\\rvert<++>" dynexp)
   ("lvst" "_\\star" dynexp-delete-leading-space)
   ("lw" "_w" dynexp-delete-leading-space)
   ("lx" "_x" dynexp-delete-leading-space)
   ("lxa" "_\\alpha" dynexp-delete-leading-space)
   ("lxb" "_\\beta" dynexp-delete-leading-space)
   ("lxc" "_\\chi" dynexp-delete-leading-space)
   ("lxcd" "_\\Delta" dynexp-delete-leading-space)
   ("lxcg" "_\\Gamma" dynexp-delete-leading-space)
   ("lxcl" "_\\Lambda" dynexp-delete-leading-space)
   ("lxco" "_\\Omega" dynexp-delete-leading-space)
   ("lxcp" "_\\Pi" dynexp-delete-leading-space)
   ("lxcph" "_\\Phi" dynexp-delete-leading-space)
   ("lxcps" "_\\Psi" dynexp-delete-leading-space)
   ("lxcs" "_\\Sigma" dynexp-delete-leading-space)
   ("lxcth" "_\\Theta" dynexp-delete-leading-space)
   ("lxcu" "_\\Upsilon" dynexp-delete-leading-space)
   ("lxcx" "_\\Xi" dynexp-delete-leading-space)
   ("lxd" "_\\delta" dynexp-delete-leading-space)
   ("lxe" "_\\eps" dynexp-delete-leading-space)
   ("lxet" "_\\eta" dynexp-delete-leading-space)
   ("lxg" "_\\gamma" dynexp-delete-leading-space)
   ("lxio" "_\\iota" dynexp-delete-leading-space)
   ("lxk" "_\\kappa" dynexp-delete-leading-space)
   ("lxl" "_\\lambda" dynexp-delete-leading-space)
   ("lxm" "_\\mu" dynexp-delete-leading-space)
   ("lxn" "_\\nu" dynexp-delete-leading-space)
   ("lxo" "_\\omega" dynexp-delete-leading-space)
   ("lxp" "_\\pi" dynexp-delete-leading-space)
   ("lxph" "_\\phi" dynexp-delete-leading-space)
   ("lxps" "_\\psi" dynexp-delete-leading-space)
   ("lxr" "_\\rho" dynexp-delete-leading-space)
   ("lxs" "_\\sigma" dynexp-delete-leading-space)
   ("lxt" "_\\tau" dynexp-delete-leading-space)
   ("lxth" "_\\theta" dynexp-delete-leading-space)
   ("lxu" "_\\upsilon" dynexp-delete-leading-space)
   ("lxve" "_\\varepsilon" dynexp-delete-leading-space)
   ("lxvp" "_\\varpi" dynexp-delete-leading-space)
   ("lxvph" "_\\varphi" dynexp-delete-leading-space)
   ("lxvr" "_\\varrho" dynexp-delete-leading-space)
   ("lxvs" "_\\varsigma" dynexp-delete-leading-space)
   ("lxvth" "_\\vartheta" dynexp-delete-leading-space)
   ("lxx" "_\\xi" dynexp-delete-leading-space)
   ("lxz" "_\\zeta" dynexp-delete-leading-space)
   ("ly" "_y" dynexp-delete-leading-space)
   ("lz" "_z" dynexp-delete-leading-space)
   ("mbbu" "\\mathbb{<+++>}<++>" dynexp)
   ("mbb" "\\mathbb{<+++>}<++>" dynexp)
   ("mbf" "\\mathbf{<+++>}<++>" dynexp)
   ("mbfu" "\\mathbf{<+++>}<++>" dynexp)
   ("mbx" "\\mbox{<+++>}<++>" dynexp)
   ("mbxu" "\\mbox{<+++>}<++>" dynexp)
   ("mcal" "\\mathcal{<+++>}<++>" dynexp)
   ("mcalu" "\\mathcal{<+++>}<++>" dynexp)
   ("mcor" "\\newtheorem{corollary}{Corollary}
" nil)
   ("mdfn" "\\newtheorem{definition}{Definition}
" nil)
   ("mfrk" "\\mathfrak{<+++>}<++>" dynexp)
   ("mfrku" "\\mathfrak{<+++>}<++>" dynexp)
   ("mgt" "\\gg" nil)
   ("mmgt" "\\ggg" nil)
   ("mi" "-" nil)
   ("mi1" "- 1" nil)
   ("pl1" "+ 1" nil)
   ("midx" "\\makeindex" nil)
   ("mip" "\\mp" nil)
   ("mit" "\\mathit{<+++>}<++>" dynexp)
   ("mitu" "\\mathit{<+++>}<++>" dynexp)
   ("mlem" "\\newtheorem{lemma}{Lemma}
" nil)
   ("mlt" "\\ll" nil)
   ("mmlt" "\\lll" nil)
   ("lta" "\\lessapprox" nil)
   ("gta" "\\gtrapprox" nil)
   ("lts" "\\lesssim" nil)
   ("gts" "\\gtrsim" nil)
   ("mn" "\\min" nil)
   ("mo" "-1" nil)
   ("mopu" "\\mathop{<+++>}<++>" dynexp)
   ("mprop" "\\newtheorem{proposition}{Proposition}
" nil)
   ("mrkb" "\\markboth{<+++>}{<++>}<++>" dynexp)
   ("mrkbu" "\\markboth{<+++>}<++>" dynexp)
   ("mrm" "\\mathrm{<+++>}<++>" dynexp)
   ("mrg" "\\mathring{<+++>}<++>" dynexp)
   ("mrmu" "\\mathrm{<+++>}<++>" dynexp)
   ("msf" "\\mathsf{<+++>}<++>" dynexp)
   ("msfu" "\\mathsf{<+++>}<++>" dynexp)
   ("mskp" "\\medskip" nil)
   ("msp" "\\:" nil)
   ("mthm" "\\newtheorem{theorem}{Theorem}
" nil)
   ("mtt" "\\mathtt{<+++>}<++>" dynexp)
   ("mttu" "\\mathtt{<+++>}<++>" dynexp)
   ("mvb" "{\\mathversion{bold} $ $}" nil)
   ("mx" "\\max" nil)
   ("maxu" "\\max(<+++>)<++>" dynexp)
   ("minu" "\\min(<+++>)<++>" dynexp)
   ("mx2bk" "\\begin{bmatrix}
<+++> & <++> \\\\
<++> & <++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx2i" "\\begin{bmatrix}
1 & 0 \\\\
0 & 1 \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx2p" "\\begin{pmatrix}
<+++> & <++> \\\\
<++> & <++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx2s" "\\begin{bmatrix}
 0 & 1 \\\\
-1 & 0 \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx3b" "\\begin{bmatrix}
<+++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx3bk" "\\begin{bmatrix}
<+++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx3b35pt" "\\begin{bmatrix}
<+++> & <++> & <++> \\\\ [35pt]
<++> & <++> & <++> \\\\ [35pt]
<++> & <++> & <++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mx3d" "\\left| \\begin{matrix}
<+++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
\\end{matrix} \\right|<++>" dynexp)
   ("mx3i" "\\begin{pmatrix}
 1 & 0 & 0 \\\\
 0 & 1 & 0 \\\\
 0 & 0 & 1 \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx3p" "\\begin{pmatrix}
<+++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
<++> & <++> & <++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx3pu" "\\begin{pmatrix}
1 & <+++> & <++> \\\\
0 & 1 & <++> \\\\
0 & 0 & 1 \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx4c" "\\begin{pmatrix}
<+++>  \\\\
<++>  \\\\
<++>  \\\\
<++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx4p" "\\begin{pmatrix}
<+++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx5c" "\\begin{pmatrix}
<+++>  \\\\
<++>  \\\\
<++>  \\\\
<++>  \\\\
<++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx5p" "\\begin{pmatrix}
<+++> & <++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> & <++> \\\\
<++> & <++> & <++> & <++> & <++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mxbu" "\\begin{bmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mxc" "\\begin{pmatrix}
<+++>  \\\\
<++>  \\\\
<++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mxc2" "\\begin{pmatrix}
<+++>  \\\\
<++>  \\\\
\\end{pmatrix}<++>" dynexp)
   ("mx2c" "\\begin{pmatrix}
<+++>  \\\\
<++>  \\\\
\\end{pmatrix}<++>" dynexp)
   ("mxr" "\\begin{pmatrix}
<+++> & <++> & <++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mxcb" "\\begin{bmatrix}
<+++>  \\\\
<++> \\\\
\\end{bmatrix}<++>" dynexp)
   ("mxcvu" "\\begin{Vmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{Vmatrix}<++>" dynexp)
   ("mxpu" "\\begin{pmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{pmatrix}<++>" dynexp)
   ("mxsbu" "\\left[
\\begin{smallmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{smallmatrix}
\\right]<++>" dynexp)
   ("mxspu" "\\left(
\\begin{smallmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{smallmatrix}
\\right)<++>" dynexp)
   ("mxsu" "\\begin{smallmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{smallmatrix}<++>" dynexp)
   ("mxu" "\\begin{matrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{matrix}<++>" dynexp)
   ("mxvu" "\\begin{vmatrix}
<+++>&<++>\\\\
<++>&<++> \\\\
\\end{vmatrix}<++>" dynexp)
   ("na" "\\nabla" nil)
   ("nal" " \\\\
<+++> &= <++>" dynexp)
   ("nca" "\\\\
<+++>
& <++>" dynexp)
   ("ncmd" "\\newcommand{<+++>}{<++>}<++>" dynexp)
   ("ncmdu" "\\newcommand{<+++>}<++>" dynexp)
   ("ndsp" "\\! \\!" nil)
   ("ne" "\\neq" nil)
   ("neo" "\\notin" nil)
   ("nitm" "
\\item <+++>" dynexp)
   ("nl" "\\\\" nil)
   ("nle" "\\\\ 
 &=&" nil)
   ("nlin" "\\newline" nil)
   ("nll" "\\null" nil)
   ("nmu" "\\lVert <+++> \\rVert<++>" dynexp)
   ("bnmu" "\\left\\lVert <+++> \\right\\rVert<++>" dynexp)
   ("noi" "\\noindent" nil)
   ("nolim" "\\nolimits" nil)
   ("nonu" "\\nonumber" nil)
   ("np" "\\newpage" nil)
   ("nqa" " \\\\
&<+++>& <++>" dynexp)
   ("nqae" " \\\\
&=& <+++>" dynexp)
   ("nr2" "\\sqrt[n]{2}" nil)
   ("nrbu" "\\lVert\\mathbf{u}\\rVert" nil)
   ("nrmu" "\\lVert <+++> \\rVert<++>" dynexp)
   ("nsp" "\\!" nil)
   ("ntg" "\\notag" nil)
   ("nvb" "\\nmid" nil)
   ("o0" "(0)" dynexp-delete-leading-space)
   ("o1" "(1)" dynexp-delete-leading-space)
   ("o2" "(2)" dynexp-delete-leading-space)
   ("o3" "(3)" dynexp-delete-leading-space)
   ("o4" "(4)" dynexp-delete-leading-space)
   ("o5" "(5)" dynexp-delete-leading-space)
   ("o6" "(6)" dynexp-delete-leading-space)
   ("o7" "(7)" dynexp-delete-leading-space)
   ("o8" "(8)" dynexp-delete-leading-space)
   ("o9" "(9)" dynexp-delete-leading-space)
   ("oAA" "(\\mathbb{A})" dynexp-delete-leading-space)
   ("oCC" "(\\mathbb{C})" dynexp-delete-leading-space)
   ("oBB" "(\\mathbb{B})" dynexp-delete-leading-space)
   ("oTT" "(\\mathbb{T})" dynexp-delete-leading-space)
   ("oHH" "(\\mathbb{H})" dynexp-delete-leading-space)
   ("oNN" "(\\mathbb{N})" dynexp-delete-leading-space)
   ("oQQ" "(\\mathbb{Q})" dynexp-delete-leading-space)
   ("oRR" "(\\mathbb{R})" dynexp-delete-leading-space)
   ("oSS" "(\\mathbb{S})" dynexp-delete-leading-space)
   ("oZZ" "(\\mathbb{Z})" dynexp-delete-leading-space)
   ("oa" "(a)" dynexp-delete-leading-space)
   ("ob" "{<+++>}<++>" dynexp-delete-leading-space-dynexp)
   ("oba" "\\bar{a}" nil)
   ("obbca" "(\\mathbb{A})" dynexp-delete-leading-space)
   ("obbcb" "(\\mathbb{B})" dynexp-delete-leading-space)
   ("obbcc" "(\\mathbb{C})" dynexp-delete-leading-space)
   ("obbcd" "(\\mathbb{D})" dynexp-delete-leading-space)
   ("obbce" "(\\mathbb{E})" dynexp-delete-leading-space)
   ("obbcf" "(\\mathbb{F})" dynexp-delete-leading-space)
   ("obbcg" "(\\mathbb{G})" dynexp-delete-leading-space)
   ("obbch" "(\\mathbb{H})" dynexp-delete-leading-space)
   ("obbci" "(\\mathbb{I})" dynexp-delete-leading-space)
   ("obbcn" "(\\mathbb{N})" dynexp-delete-leading-space)
   ("obbcp" "(\\mathbb{P})" dynexp-delete-leading-space)
   ("obbcq" "(\\mathbb{Q})" dynexp-delete-leading-space)
   ("obbcr" "(\\mathbb{R})" dynexp-delete-leading-space)
   ("obbct" "(\\mathbb{T})" dynexp-delete-leading-space)
   ("obbcz" "(\\mathbb{Z})" dynexp-delete-leading-space)
   ("obd" "\\bar{d}" nil)
   ("obk" "[<+++>]<++>" dynexp-delete-leading-space-dynexp)
   ("obkk" "\\lbracket<+++>\\rbracket<++>" dynexp)
   ("obp" "\\bar{p}" nil)
   ("obq" "\\bar{q}" nil)
   ("obr" "\\bar{r}" nil)
   ("obs" "\\bar{s}" nil)
   ("obu" "\\bar{<+++>}<++>" dynexp)
   ("obx" "\\bar{x}" nil)
   ("obxa" "\\bar{\\alpha}" nil)
   ("obxb" "\\bar{\\beta}" nil)
   ("obxc" "\\bar{\\chi}" nil)
   ("obxd" "\\bar{\\delta}" nil)
   ("obxe" "\\bar{\\eps}" nil)
   ("obxet" "\\bar{\\eta}" nil)
   ("obxg" "\\bar{\\gamma}" nil)
   ("obxl" "\\bar{\\lambda}" nil)
   ("obxm" "\\bar{\\mu}" nil)
   ("obxn" "\\bar{\\nu}" nil)
   ("obxo" "\\bar{\\omega}" nil)
   ("obxp" "\\bar{\\pi}" nil)
   ("oby" "\\bar{y}" nil)
   ("obz" "\\bar{z}" nil)
   ("oc" "(c)" dynexp-delete-leading-space)
   ("oca" "(A)" dynexp-delete-leading-space)
   ("ocb" "(B)" dynexp-delete-leading-space)
   ("occ" "(C)" dynexp-delete-leading-space)
   ("ocd" "(D)" dynexp-delete-leading-space)
   ("oce" "(E)" dynexp-delete-leading-space)
   ("ocf" "(F)" dynexp-delete-leading-space)
   ("ocg" "(G)" dynexp-delete-leading-space)
   ("och" "(H)" dynexp-delete-leading-space)
   ("oci" "(I)" dynexp-delete-leading-space)
   ("ocj" "(J)" dynexp-delete-leading-space)
   ("ock" "(K)" dynexp-delete-leading-space)
   ("ocl" "(L)" dynexp-delete-leading-space)
   ("ocm" "(M)" dynexp-delete-leading-space)
   ("ocn" "(N)" dynexp-delete-leading-space)
   ("oco" "(O)" dynexp-delete-leading-space)
   ("ocp" "(P)" dynexp-delete-leading-space)
   ("ocq" "(Q)" dynexp-delete-leading-space)
   ("ocr" "(R)" dynexp-delete-leading-space)
   ("ocs" "(S)" dynexp-delete-leading-space)
   ("oct" "(T)" dynexp-delete-leading-space)
   ("ocu" "\\check{<+++>}<++>" dynexp)
   ("ocuu" "(U)" dynexp-delete-leading-space)
   ("ocv" "(V)" dynexp-delete-leading-space)
   ("ocw" "(W)" dynexp-delete-leading-space)
   ("ocx" "(X)" dynexp-delete-leading-space)
   ("ocy" "(Y)" dynexp-delete-leading-space)
   ("ocz" "(Z)" dynexp-delete-leading-space)
   ("od" "(d)" dynexp-delete-leading-space)
   ("oddp" "\\ddot{p}" nil)
   ("oddq" "\\ddot{q}" nil)
   ("oddr" "\\ddot{r}" nil)
   ;; ("odds" "\\ddot{s}" nil)
   ("oddu" "\\ddot{<+++>}<++>" dynexp)
   ("oddx" "\\ddot{x}" nil)
   ("oddxa" "\\ddot{\\alpha}" nil)
   ("oddxb" "\\ddot{\\beta}" nil)
   ("oddxg" "\\ddot{\\gamma}" nil)
   ("oddy" "\\ddot{y}" nil)
   ("oddz" "\\ddot{z}" nil)
   ("odp" "\\dot{p}" nil)
   ("odq" "\\dot{q}" nil)
   ("odr" "\\dot{r}" nil)
   ("ods" "\\dot{s}" nil)
   ("odu" "\\dot{<+++>}<++>" dynexp)
   ("odx" "\\dot{x}" nil)
   ("odxa" "\\dot{\\alpha}" nil)
   ("odxb" "\\dot{\\beta}" nil)
   ("odxg" "\\dot{\\gamma}" nil)
   ("ody" "\\dot{y}" nil)
   ("odz" "\\dot{z}" nil)
   ("oe" "(e)" dynexp-delete-leading-space)
   ("oeb" "(b)" dynexp-delete-leading-space)
   ("oef" "(f)" dynexp-delete-leading-space)
   ("oen" "(n)" dynexp-delete-leading-space)
   ("oep" "(p)" dynexp-delete-leading-space)
   ("oer" "(r)" dynexp-delete-leading-space)
   ("og" "(g)" dynexp-delete-leading-space)
   ("ohp" "\\hat{p}" nil)
   ("ohq" "\\hat{q}" nil)
   ("ohr" "\\hat{r}" nil)
   ("ohs" "\\hat{s}" nil)
   ("ohu" "\\hat{<+++>}<++>" dynexp)
   ("acu" "\\acute{<+++>}<++>" dynexp)
   ("ohx" "\\hat{x}" nil)
   ("ohxa" "\\hat{\\alpha}" nil)
   ("ohxb" "\\hat{\\beta}" nil)
   ("ohxg" "\\hat{\\gamma}" nil)
   ("ohy" "\\hat{y}" nil)
   ("ohz" "\\hat{z}" nil)
   ("oi" "(i)" dynexp-delete-leading-space)
   ("oifni" "(\\infty)" dynexp-delete-leading-space)
   ("oinfi" "(\\infty)" dynexp-delete-leading-space)
   ("oj" "(j)" dynexp-delete-leading-space)
   ("ol" "(l)" dynexp-delete-leading-space)
   ("olp" "\\overline{p}" nil)
   ("olq" "\\overline{q}" nil)
   ("olr" "\\overline{r}" nil)
   ("olra" "\\Leftrightarrow" nil)
   ("ols" "\\overline{s}" nil)
   ("olu" "\\overline{<+++>}<++>" dynexp)
   ("oluu" "\\overline{u}" nil)
   ("olx" "\\overline{x}" nil)
   ("olxa" "\\overline{\\alpha}" nil)
   ("olxb" "\\overline{\\beta}" nil)
   ("olxg" "\\overline{\\gamma}" nil)
   ("oly" "\\overline{y}" nil)
   ("olz" "\\overline{z}" nil)
   ("om" "(m)" dynexp-delete-leading-space)
   ("omi" "\\ominus" nil)
   ("oo" "(o)" dynexp-delete-leading-space)
   ("op" "(<+++>)<++>" dynexp-delete-leading-space-dynexp)
   ("opad" "\\operatorname{ad}" nil)
   ("opa" "(a)" dynexp-delete-leading-space)
   ("opb" "(b)" dynexp-delete-leading-space)
   ("opc" "(c)" dynexp-delete-leading-space)
   ("opd" "(d)" dynexp-delete-leading-space)
   ("ope" "(e)" dynexp-delete-leading-space)
   ("opf" "(f)" dynexp-delete-leading-space)
   ("opg" "(g)" dynexp-delete-leading-space)
   ("oph" "(h)" dynexp-delete-leading-space)
   ("opi" "(i)" dynexp-delete-leading-space)
   ("opj" "(j)" dynexp-delete-leading-space)
   ("opk" "(k)" dynexp-delete-leading-space)
   ("opscl" "(\\ell)" dynexp-delete-leading-space)
   ("oscl" "(\\ell)" dynexp-delete-leading-space)
   ("opm" "(m)" dynexp-delete-leading-space)
   ("opn" "(n)" dynexp-delete-leading-space)
   ("opo" "(o)" dynexp-delete-leading-space)
   ;; ("opp" "(p)" dynexp-delete-leading-space)
   ("opq" "(q)" dynexp-delete-leading-space)
   ("opr" "(r)" dynexp-delete-leading-space)
   ("ops" "(s)" dynexp-delete-leading-space)
   ("opt" "(t)" dynexp-delete-leading-space)
   ("opv" "(v)" dynexp-delete-leading-space)
   ("opw" "(w)" dynexp-delete-leading-space)
   ("opx" "(x)" dynexp-delete-leading-space)
   ("opy" "(y)" dynexp-delete-leading-space)
   ("opz" "(z)" dynexp-delete-leading-space)
   ("opcad" "\\operatorname{Ad}" nil)
   ("opcaut" "\\operatorname{Aut}" nil)
   ("opcc" "\\mathbb{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("opccard" "\\operatorname{Card}" nil)
   ("opccorr" "\\operatorname{Corr}" nil)
   ("opcdiff" "\\operatorname{Diff}" nil)
   ("opcext" "\\operatorname{Ext}" nil)
   ("opcfcl" "\\operatorname{FL}" nil)
   ("opcgcl" "\\operatorname{GL}" nil)
   ("opchar" "\\operatorname{char}" nil)
   ("opchom" "\\operatorname{Hom}" nil)
   ("opci" "\\mathbb{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("opcimu" "\\operatorname{Im}(<+++>)<++>" dynexp)
   ("opcimz" "\\operatorname{Im}(z)" nil)
   ("opcjac" "\\operatorname{Jac}" nil)
   ("opclie" "\\operatorname{Lie}" nil)
   ("opcnm" "\\operatorname{Nm}" nil)
   ("opcpcgcl" "\\operatorname{PGL}" nil)
   ("opcpic" "\\operatorname{Pic}" nil)
   ("opcproj" "\\operatorname{Proj}" nil)
   ("opcprym" "\\operatorname{Prym}" nil)
   ("opcr" "\\mathbb{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("opcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars-unless-texmathp)
   ("opcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars-unless-texmathp)
   ("opcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars-unless-texmathp)
   ("opcram" "\\operatorname{Ram}" nil)
   ("opcrank" "\\operatorname{Rank}" nil)
   ("opcres" "\\operatorname{Res}" nil)
   ("opcreu" "\\operatorname{Re}(<+++>)<++>" dynexp)
   ("opcrez" "\\operatorname{Re}(z)" nil)
   ("opcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars-unless-texmathp)
   ("opcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars-unless-texmathp)
   ("opcscl" "\\operatorname{SL}" nil)
   ("opcsco" "\\operatorname{SO}" nil)
   ("opcscp" "\\operatorname{SP}" nil)
   ("opcscu" "\\operatorname{SU}" nil)
   ("opcso3" "\\operatorname{SO(3)}" nil)
   ("opcsp" "\\operatorname{Sp}" nil)
   ("opcsym" "\\operatorname{Sym}" nil)
   ("opct" "\\mathbb{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("opctr" "\\operatorname{Tr}" nil)
   ("opcurl" "\\operatorname{curl}" nil)
   ("opcz" "\\mathbb{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("opdcso3" "\\operatorname{SO(3)}" dynexp-surround-with-dollars)
   ("opdiv" "\\operatorname{div}" nil)
   ("opf" "(f)" dynexp-delete-leading-space)
   ("opst" "(\\ast)" dynexp-delete-leading-space)
   ("opk" "(k)" dynexp-delete-leading-space)
   ("opl" "\\oplus" nil)
   ("bigopl" "\\bigoplus" nil)
   ("bigoti" "\\bigotimes" nil)
   ("opn" "(n)" dynexp-delete-leading-space)
   ("opnu" "\\operatorname{<+++>}<++>" dynexp)
   ("opr" "(r)" dynexp-delete-leading-space)
   ("oph" "(h)" dynexp-delete-leading-space)
   ("oprank" "\\operatorname{rank}" nil)
   ("opreg" "\\operatorname{reg}" nil)
   ("opres" "\\operatorname{res}" nil)
   ("opsech" "\\operatorname{sech}" nil)
   ("opsl" "\\operatorname{sl}" nil)
   ("opso3" "\\operatorname{so(3)}" dynexp-surround-with-dollars-unless-texmathp)
   ("opsq" "\\operatorname{sq}" nil)
   ("opu" "\\mathbb{<+++>}<++>" dynexp)
   ("oq" "(q)" dynexp-delete-leading-space)
   ("os" "(s)" dynexp-delete-leading-space)
   ("ot" "(t)" dynexp-delete-leading-space)
   ("oti" "\\otimes" nil)
   ("boti" "\\boxtimes" nil)
   ("otu" "\\tilde{<+++>}<++>" dynexp)
   ("owtu" "\\widetilde{<+++>}<++>" dynexp)
   ("ou" "(u)" dynexp-delete-leading-space)
   ("ov" "(v)" dynexp-delete-leading-space)
   ("ova" "\\vec{a}" nil)
   ("ovb" "\\vec{b}" nil)
   ("ovc" "\\vec{c}" nil)
   ("ovst" "\\overset{}{<+++>}<++>" dynexp)
   ("ovstcpp" "\\overset{\\longrightarrow}{\\text{PP}}" dynexp-surround-with-dollars-unless-texmathp)
   ("ovstcpq" "\\overset{\\longrightarrow}{\\text{PQ}}" nil)
   ("ovsu" "\\overset{<+++>}<++>" dynexp)
   ("ovu" "\\vec{<+++>}<++>" dynexp)
   ("ovv" "\\vec{v}" dynexp-surround-with-dollars-unless-texmathp)
   ("ovw" "\\vec{w}" nil)
   ("ow" "(w)" dynexp-delete-leading-space)
   ("owhu" "\\widehat{<+++>}<++>" dynexp)
   ("ox" "(x)" dynexp-delete-leading-space)
   ("oxa" "(\\alpha)" dynexp-delete-leading-space)
   ("oxb" "(\\beta)" dynexp-delete-leading-space)
   ("oxc" "(\\chi)" dynexp-delete-leading-space)
   ("oxcd" "(\\Delta)" dynexp-delete-leading-space)
   ("oxcg" "(\\Gamma)" dynexp-delete-leading-space)
   ("oxcl" "(\\Lambda)" dynexp-delete-leading-space)
   ("oxco" "(\\Omega)" dynexp-delete-leading-space)
   ("oxcp" "(\\Pi)" dynexp-delete-leading-space)
   ("oxcph" "(\\Phi)" dynexp-delete-leading-space)
   ("oxcps" "(\\Psi)" dynexp-delete-leading-space)
   ("oxcs" "(\\Sigma)" dynexp-delete-leading-space)
   ("oxcth" "(\\Theta)" dynexp-delete-leading-space)
   ("oxcu" "(\\Upsilon)" dynexp-delete-leading-space)
   ("oxcx" "(\\Xi)" dynexp-delete-leading-space)
   ("oxd" "(\\delta)" dynexp-delete-leading-space)
   ("oxe" "(\\eps)" dynexp-delete-leading-space)
   ("oxet" "(\\eta)" dynexp-delete-leading-space)
   ("oxg" "(\\gamma)" dynexp-delete-leading-space)
   ("oxi" "(\\iota)" dynexp-delete-leading-space)
   ("oxk" "(\\kappa)" dynexp-delete-leading-space)
   ("oxl" "(\\lambda)" dynexp-delete-leading-space)
   ("oxm" "(\\mu)" dynexp-delete-leading-space)
   ("oxn" "(\\nu)" dynexp-delete-leading-space)
   ("oxo" "(\\omega)" dynexp-delete-leading-space)
   ("oxp" "(\\pi)" dynexp-delete-leading-space)
   ("oxph" "(\\phi)" dynexp-delete-leading-space)
   ("oxps" "(\\psi)" dynexp-delete-leading-space)
   ("oxr" "(\\rho)" dynexp-delete-leading-space)
   ("oxs" "(\\sigma)" dynexp-delete-leading-space)
   ("oxt" "(\\tau)" dynexp-delete-leading-space)
   ("oxth" "(\\theta)" dynexp-delete-leading-space)
   ("oxu" "(\\upsilon)" dynexp-delete-leading-space)
   ("oxve" "(\\varepsilon)" dynexp-delete-leading-space)
   ("oxvp" "(\\varpi)" dynexp-delete-leading-space)
   ("oxvph" "(\\varphi)" dynexp-delete-leading-space)
   ("oxvr" "(\\varrho)" dynexp-delete-leading-space)
   ("oxvs" "(\\varsigma)" dynexp-delete-leading-space)
   ("oxvth" "(\\vartheta)" dynexp-delete-leading-space)
   ("oxx" "(\\xi)" dynexp-delete-leading-space)
   ("oxz" "(\\zeta)" dynexp-delete-leading-space)
   ("oy" "(y)" dynexp-delete-leading-space)
   ("oz" "(z)" dynexp-delete-leading-space)
   ("parau" "\\paragraph{<+++>}<++>" dynexp)
   ("pd" "\\partial" nil)
   ("pdsc" "<+++>
\\,\\frac{d s}{2 \\pi i}<++>" dynexp)
   ("pdti" "<+++>
\\,d^\\times<++>" dynexp)
   ("pdzy" "\\partial z/\\partial y" dynexp-surround-with-dollars-unless-texmathp)
   ("pgna" "\\pagenumbering{arabic}" nil)
   ("pgnr" "\\pagenumbering{roman}" nil)
   ("pgse" "\\pagestyle{empty}" nil)
   ("pgsm" "\\pagestyle{myheadings}" nil)
   ("pictu" "\\begin{figure}[ht]
\\begin{center}
       \\special{picture } %add pict filename
\\caption{\\label{}}
\\end{center}
\\end{figure}" nil)
   ("pidx" "\\printindex" nil)
   ("pl" "+" nil)
   ("plm" "\\pm" nil)
   ("pmu" "\\pmod{<+++>}<++>" dynexp)
   ("pmbu" "\\mathop{\\pmb{}}" nil)
   ("pnd" "\\#" nil)
   ("pni1" "\\prod^{n}_{i = 1}" nil)
   ("pnu" "\\pn{<+++>}<++>" dynexp)
   ("ppt" "\\propto" nil)
   ("prc" "\\prec" nil)
   ("prm" "\\prime" nil)
   ("pru" "\\prod" nil)
   ("prul" "\\prod_{
<+++> 
}<++>" dynexp)
   ("ps" "\\P" nil)
   ("psdg" "<+++>
\\,d g<++>" dynexp)
   ("psds" "<+++>
\\,d s<++>" dynexp)
   ("psdt" "<+++>
\\,d t<++>" dynexp)
   ("psdu" "<+++>
\\,d u<++>" dynexp)
   ("psdv" "<+++>
\\,d v<++>" dynexp)
   ("psdw" "<+++>
\\,d w<++>" dynexp)
   ("psdx" "<+++>
\\,d x<++>" dynexp)
   ("psdy" "<+++>
\\,d y<++>" dynexp)
   ("psdz" "<+++>
\\,d z<++>" dynexp)
   ("ptk" "\\prod_{
\\substack{
<+++> 
}
}<++>" dynexp)
   ("isomrophism" "isomorphism" nil)
   ("bsq" "\\blacksquare" nil)
   ("qbsq" "\\quad\\blacksquare" nil)
   ("qbtd" "\\quad\\blacktriangledown" nil)
   ("qd" "\\quad" nil)
   ("qdbsq" "\\quad $\\blacksquare$" nil)
   ("qdbtd" "\\quad $\\blacktriangledown$" nil)
   ("qdesq" "\\quad $\\square$" nil)
   ("qdetd" "\\quad $\\bigtriangledown$" nil)
   ("qed" "\\qed" nil)
   ("qeds" "\\qedsymbol" nil)
   ("qesq" "\\quad\\square" nil)
   ("qetd" "\\quad\\bigtriangledown" nil)
   ("qqd" "\\qquad" nil)
   ("qru" "\\qr{<+++>}{<++>}<++>" dynexp)
   ("ra" "\\rightarrow" nil)
   ("rra" "\\rightrightarrows" nil)
   ("rai" "\\hookrightarrow" nil)
   ("ras" "\\twoheadrightarrow" nil)
   ("rcmd" "\\renewcommand{<+++>}{<++>}<++>" dynexp)
   ("rcmdl" "\\renewcommand{\\labelenumi}{\\em $($\\roman{enumi}$)$}" nil)
   ("rcmdu" "\\renewcommand{<+++>}<++>" dynexp)
   ("rcqeds" "\\renewcommand{qedsymbol}{<+++>}<++>" dynexp)
   ("rdo" "\\right." nil)
   ("rea" "\\Re" nil)
   ("refia" "\\item Author [year]
Title.
{\\it Journal\\/} {\\bf 11}, 123--223." nil)
   ("refib" "\\item Author [year]
{\\it Title.\\/}
Publisher." nil)
   ("refp" "(\\ref{})" dynexp-delete-leading-space)
   ("refu" "\\ref{<+++>}<++>" dynexp)
   ("reo" "\\ni" nil)
   ("ribk" "\\right]" nil)
   ("ribr" "\\right\\}" nil)
   ("rip" "\\right)" nil)
   ("rir" "\\right\\rangle" nil)
   ("rlb" "\\}" nil)
   ("rle" "\\rangle" nil)
   ("rlin" "\\rightline{<+++>}<++>" dynexp)
   ("rmu" "{\\rm<+++>}<++>" dynexp)
   ("rpl" "\\mathbb{R}_+" dynexp-surround-with-dollars-unless-texmathp)
   ("rplt" "\\mathbb{R}_+^times" dynexp-surround-with-dollars-unless-texmathp)
   ("rrd" "\\right\\rangle \\! \\right\\rangle" nil)
   ("rrt" "\\right\\rangle \\! \\right\\rangle \\! \\right\\rangle" nil)
   ("rsa" "\\rightsquigarrow" nil)
   ("lrsa" "\\leftrightsquigarrow" nil)
   ("rtgu" "\\raisetag{<+++>}<++>" dynexp)
   ("rti" "\\rtimes" nil)
   ("rve" "\\right\\rvert" nil)
   ("scc" "\\succ" nil)
   ("scl" "\\ell" dynexp-surround-with-dollars-unless-texmathp)
   ("dscl" "\\ell" dynexp-surround-with-dollars)
   ("scu" "{\\sc <+++>}<++>" dynexp)
   ("sd" "\\, d" nil)
   ("sdg" "\\,d g" nil)
   ("sdp" "\\,\\circledS\\," nil)
   ("sdr" "\\searrow" nil)
   ("sds" "\\,d s" nil)
   ("sdt" "\\,d t" nil)
   ("sdu" "\\,d u" nil)
   ("sdv" "\\,d v" nil)
   ("sdw" "\\,d w" nil)
   ("sdx" "\\,d x" nil)
   ("sdy" "\\,d y" nil)
   ("sdz" "\\,d z" nil)
   ("setc" "\\setcounter{<+++>}{<++>}<++>" dynexp)
   ("setcu" "\\setcounter{<+++>}<++>" dynexp)
   ("setlu" "\\left\\{ \\left.  \\!\\right|
     \\right\\}" nil)
   ("setm" "\\setminus" nil)
   ("bsetu" "\\left\\{ <+++> \\middle\\vert <++> \\right\\}<++>" dynexp)
   ("setu" "\\left\\{ <+++> \\middle\\vert <++> \\right\\}<++>" dynexp)
   ("sfu" "{\\sf <+++>}<++>" dynexp)
   ("shl" "A^i_{\\;a}" nil)
   ("shp" "\\sharp" nil)
   ("sih" "\\sinh" nil)
   ("siph" "\\sin \\phi" nil)
   ("siq" "\\sin^2" nil)
   ("sith" "\\sin \\theta" nil)
   ;; ("sln" "\\setlength{<+++>}{<++>}<++>" dynexp)
   ("slnu" "\\setlength{<+++>}<++>" dynexp)
   ;; ("slu" "{\\sl<+++>}<++>" dynexp)
   ("smb" "\\smash[b]{<+++>}<++>" dynexp)
   ("smt" "\\smash[t]{<+++>}<++>" dynexp)
   ("smu" "\\sum" nil)
   ("smul" "\\sum_{
<+++> 
}<++>" dynexp)
   ("sn" "\\section{<+++>}

<++>" dynexp)
   ("sni1" "\\sum^{n}_{i = 1}" nil)
   ("sns" "\\section*{<+++>}

<++>" dynexp)
   ("snsref" "\\section*{References}" nil)
   ("spi" "\\setlength{\\parindent}{0em}" nil)
   ("spn" "\\setcounter{page}{<+++>}<++>" dynexp)
   ("sps" "\\setlength{\\parskip1.5ex plus 0.5ex minus 0.5ex}" nil)
   ("sq" "^2" dynexp-delete-leading-space)
   ("sq10" "\\sqrt{10}" nil)
   ("sq2" "\\sqrt{2}" nil)
   ("sq3" "\\sqrt{3}" nil)
   ("sq5" "\\sqrt{5}" nil)
   ("sq7" "\\sqrt{7}" nil)
   ("squ" "\\sqrt{<+++>}<++>" dynexp)
   ("sqxp" "\\sqrt{\\pi}" nil)
   ("sskp" "\\smallskip" nil)
   ("ssn" "\\subsection{<+++>}

<++>" dynexp)
   ("ssns" "\\subsection*{<+++>}

<++>" dynexp)
   ("ssp" "\\," nil)
   ("sssn" "\\subsubsection{<+++>}

<++>" dynexp)
   ("sssns" "\\subsubsection*{<+++>}

<++>" dynexp)
   ("sssz" " \\scriptscriptstyle" nil)
   ("sst" "\\sideset{}{<+++>}<++>" dynexp)
   ("sstu" "\\sideset{<+++>}<++>" dynexp)
   ("ssz" " \\scriptstyle" nil)
   ("stk" "" czm-tex-edit-substackify)
   ("sube" "\\subseteq" nil)
   ("subne" "\\subsetneq" nil)
   ("subs" "\\subset" nil)
   ("supne" "\\supsetneq" nil)
   ("supe" "\\supseteq" nil)
   ("supr" "\\sup" nil)
   ("sups" "\\supset" nil)
   ("sur" "\\nearrow" nil)
   ("tabex1" "\\begin{center}
\\begin{tabular}{ccccc}
                   & & \\multicolumn{3}{c}{Definition}    \\\\
                   & & \\multicolumn{3}{c}{of derivative} \\\\
                   & & & $\\downarrow$
                   &                                     \\\\
Partials exist and & $\\Longrightarrow$
                   & Differentiable
                   & $\\Longrightarrow$
                   & Partials exist                       \\\\
are continuous     & & & &
\\end{tabular}
\\end{center}" nil)
   ("tabex2" "\\begin{center}
\\fbox{\\parbox{4.5in}{
\\begin{tabular}{ll}
\\multicolumn{2}{c}{\\bf Box 2.1.1 \\quad
                       Summary of Important Formulas for \\S 2.1}  \\\\
{\\it Velocity\\/} 
      &                                                           \\\\
      &                                                           \\\\
$ V = {\\displaystyle \\frac{\\partial \\phi}{\\partial t} } $  
      & $ V ^a ={\\displaystyle \\frac{\\partial \\phi ^a} 
                                    {\\partial t}}$                \\\\  
      &                                                           \\\\
$ v _t = V _t \\circ \\phi _t ^{-1} $  
      & $ v ^a _t = V ^a _t \\circ \\phi _t ^{-1} $                 \\\\
      &                                                           \\\\
{\\it Covariant Derivative\\/} 
      &                                                           \\\\
      &                                                           \\\\
$ {\\bf D} v \\cdot w = \\nabla _w v $  
      & $ (\\nabla _w v) ^a =
          {\\displaystyle \\frac{\\partial v ^a}
                              {\\partial x ^b}} w ^b +
                         \\gamma ^a _{b c} w ^b v ^c $             \\\\
\\end{tabular}
}} 
\\end{center}" nil)
   ("tabex3" "\\begin{center}
\\begin{tabular}{lll}
{\\it Classical Tensor Analysis\\/} 
     & 
     & {\\it Tensor Analysis on Manifolds\\/} 
\\\\ \\\\
$ \\{ x ^a\\}$ 
     & Coordinates  
     & $ \\{ x ^a\\}$                                   
\\\\ \\\\
$ e _a = {\\displaystyle \\frac{\\partial z ^i }
                             {\\partial x ^a} \\dot{ i} _i }$ 
     & $ \\!\\!\\! \\begin{array}{l}    
                {\\rm coordinate} \\\\  
                {\\rm basis \\, vectors }
                \\end{array} $ 
     & $ {\\displaystyle \\frac{\\partial}{\\partial x^a} = e _a } $                \\\\ \\\\
       $ \\!\\!\\!\\! \\left. \\begin{array}{l}
                \\bar{e} _a = {\\displaystyle \\frac{\\partial x ^b} 
                                   {\\partial \\bar{x} ^a} e _b }   
\\\\ \\\\
                \\bar{e} ^a = {\\displaystyle \\frac{\\partial \\bar{x} ^a} 
                                   {\\partial \\bar{x} ^b} e^b }
                 \\end{array}  \\right\\}$ 
     & $ \\!\\!\\! \\begin{array}{l}
                {\\rm change \\, of} \\\\   
                {\\rm coordinates} \\\\
                \\end{array} $ 
     & $ \\left\\{ \\begin{array}{l}
                {\\displaystyle \\frac{\\partial}{\\partial \\bar{x} ^a} =
                \\frac{ \\partial x ^b}{\\partial \\bar{x} ^a} 
                \\frac{ \\partial} {\\partial x ^b} } 
                \\\\  \\\\
                {\\displaystyle d \\bar{x} ^a = 
                \\frac{ \\partial \\bar{x} ^a }{ \\partial x ^b} d x ^b }
                \\end{array}  \\right. $ 
\\\\
\\end{tabular}
\\end{center}" nil)
   ("tabex4" "\\begin{center}
\\begin{tabular}{||l|l||}                                              
\\hline \\hline
\\quad {\\bf Classical Mechanics} 
      & \\quad {\\bf Quantum Mechanics}                 \\\\ \\hline \\hline
immersed Lagrangian manifold  
      & element of $L^2 (Q)$ 
        or ${\\mathcal D}^\\prime (Q)$                      \\\\
$\\Lambda \\rightarrow (T ^\\ast Q,\\Omega)$   
      &                                               \\\\ \\hline
$\\Lambda = $ graph of ${\\bf d} S$  
      & $\\psi = \\exp (iS/\\hbar)$                      \\\\ \\hline
$T ^{\\ast} Q$  
      & Hilbertspace                                  \\\\ \\hline
Lagrangian manifold  
      & (possibly unbounded)                          \\\\
$\\quad \\Omega \\subset(T^\\ast Q, \\Omega _Q)
\\times (T^\\ast R,-\\Omega_R)$
      & $\\quad L^2 (R)$ to $L^2 (Q)$                  \\\\ \\hline
composition of canonical relations  
      & composition of operators                      \\\\ \\hline \\hline
\\end{tabular}
\\end{center}" nil)
   ("tabex5" "\\begin{center}
\\fbox{\\fbox{\\parbox{4.0in}{
\\begin{tabular}{ll}
\\quad {\\bf Classical Mechanics}  
      & \\quad {\\bf Quantum Mechanics}                  \\\\ \\hline \\hline
immersed Lagrangian manifold  
      & element of $L^2 (Q)$ or ${\\mathcal D}^\\prime (Q)$  \\\\
$\\Lambda \\rightarrow (T ^\\ast Q,\\Omega)$   
      &                        \\\\ \\hline
$\\Lambda = $ graph of ${\\bf d} S$  
      & $\\psi = \\exp (iS/\\hbar)$                       \\\\ \\hline
$T ^{\\ast} Q$  
      & Hilbertspace                                   \\\\ \\hline
Lagrangian manifold  
      & (possibly unbounded)                           \\\\
$\\quad \\Omega \\subset (T^\\ast Q, \\Omega _Q)
\\times (T^\\ast R,-\\Omega_R)$  
      & $\\quad L^2 (R)$ to $L^2 (Q)$                   \\\\ \\hline
        composition of canonical relations  
     & composition of operators                       \\\\
\\end{tabular}
}}} \\end{center}" nil)
   ("tabex6" "\\begin{center}
\\begin{tabular}{||l|c|c||}
    \\hline
 Case & Conditions & Connection                               \\\\ \\hline
 Unconstrained  
      & ${\\mathcal D}_q = T_q Q$  
      & ${\\mathcal A}^{\\rm sym}(\\dot q)={\\Bbb I} ^{-1} J(\\dot{q})$ \\\\ [1ex]
 Purely Kinematic  
      & ${\\mathcal D}_q \\cap T_q({\\rm Orb}(q)) = \\{0\\}$  
      & ${\\mathcal A}^{\\rm kin} (\\dot{q}) = 0$                     \\\\ [1ex]
 Horizontal symmetries  
      & ${\\mathcal D}_q \\cap T_q({\\rm Orb}(q))_G   
                         = T_q({\\rm Orb}(q))_H$  
      & ${\\mathcal A}^{\\rm sym} (\\dot{q})   
                     + {\\mathcal A}^{\\rm kin} (\\dot{q}) 
                     ={\\Bbb I} ^{-1} J_H (\\dot{q})$            \\\\ [1ex]
 General principal  
      & ${\\mathcal D}_q + T_q({\\rm Orb}(q)) = T_q Q$  
      & ${\\mathcal A}^{\\rm sym}(\\dot{q}) + {\\mathcal A}^{\\rm kin}(\\dot{q}) = 
        {\\Bbb I} ^{-1} J ^{\\rm nhc}(\\dot{q})$ \\\\
 bundle case  
      &  
      &                                                       \\\\ \\hline
\\end{tabular}
\\end{center}" nil)
   ("tabl" "\\begin{table}[ht]                 %optional [t, b or h];
\\begin{minipage}{0.9\\textwidth}
\\begin{tabular}[ccc]
 &  &  \\\\
 &  &  \\\\
\\end{tabular}
\\end{minipage}
\\caption{}
\\label{}
\\end{table}" nil)
   ("tb" "\\>" nil)
   ("tbex" "\\begin{tabbing}
xxxxxxxxxxx\\= xxxxxxxxxxx\\= xxxxxxxxxxx\\= \\kill
items      \\> for        \\> row        \\> one      \\\\
items      \\> for        \\> row        \\> two      \\\\
\\end{tabbing}" nil)
   ("tdu" "\\todo{<+++>}<++>" dynexp)
   ("te" "\\exists" nil)
   ("teabs" "\\begin{abstract}
Text goes here
\\end{abstract}" nil)
   ("teack" "\\begin{acknowledgment}
\\end{acknowledgment}" nil)
   ("teaut" "\\title{Title of paper}
\\author{
Author1
   \\thanks{Research partially supported by ...}
   \\\\Department of Mathematics
   \\\\University of ... \\\\
\\and
Author2
   \\thanks{Research partially supported by ...}
   \\\\Department of Physics
   \\\\State University of ... }
\\date{put in custom date; delete this line for today's date}
\\maketitle" nil)
   ("tebd" "\\documentclass{article}
\\usepackage{latexsym,amssymb}             % special symbols 
\\usepackage{amsmath}                      % amsmath environments
\\usepackage{amsthm}                       % ams theorem/proof environments
% \\usepackage{amscd}                      % ams commutative diagrams 
% \\usepackage{graphicx}                   % graphics commands
% \\usepackage{color}                      % color commands
% \\usepackage{verbatim}                   % comment/verbatim environments
% \\usepackage{makeidx}                    % makeindex

\\newcommand{\\bfi}{\\bfseries\\itshape}      % bold italic
\\begin{document}" nil)
   ("tebib" "\\begin{thebibliography}{}
\\bibitem[]{}   %use ``bibia'' or ``bibib'' to fill in  bibitems
\\end{thebibliography}" nil)
   ("tebook" "%&latex2e--tebook 
\\documentclass{book}
\\usepackage{latexsym,amssymb}             % special symbols 
\\usepackage{amsmath}                      % amsmath environments
\\usepackage{amsthm}                       % ams theorem/proof environments
% \\usepackage{amscd}                      % ams commutative diagrams 
% \\usepackage{graphicx}                   % graphics commands
% \\usepackage{color}                      % color commands
% \\usepackage{verbatim}                   % comment/verbatim environments
% \\usepackage{makeidx}                    % makeindex


        \\theoremstyle{plain} %--default
        \\newtheorem{theorem}             {Theorem}  [section]
        \\newtheorem{lemma}      [theorem]{Lemma}
        \\newtheorem{corollary}  [theorem]{Corollary}
        \\newtheorem{proposition}[theorem]{Proposition}
        \\newtheorem{algorithm}  [theorem]{Algorithm}
        \\newtheorem{criterion}  [theorem]{Criterion}
        \\newtheorem{conjecture} [theorem]{Conjecture}
        \\newtheorem{question}   [theorem]{Question}

        \\theoremstyle{definition}
        \\newtheorem{definition} [theorem]{Definition}
        \\newtheorem{condition}  [theorem]{Condition}
        \\newtheorem{example}    [theorem]{Example}
        \\newtheorem{problem}    [theorem]{Problem}
        \\newtheorem{solution}   [theorem]{Solution}

        \\theoremstyle{remark}
        \\newtheorem{remark}              {Remark}
        \\newtheorem{note}                {Note}
        \\newtheorem{claim}               {Claim}
        \\newtheorem{summary}             {Summary}
        \\newtheorem{case}                {Case}
        \\newtheorem{acknowledgment}      {Acknowledgments}
        \\newtheorem{conclusion}          {Conclusion}
        \\newtheorem{notation}            {Notation}

\\makeatletter
\\@addtoreset{figure}{section}             % figure numbering within section
\\def\\thefigure{\\thesection.\\@arabic\\c@figure}
\\def\\fps@figure{h, t}
\\@addtoreset{equation}{section}           % equation numbering within section
\\def\\theequation{\\thesection.\\arabic{equation}}
\\makeatother


\\begin{document}

\\title{Title of Book}
\\author{ Author1
   \\thanks{Research partially supported by ...}
   \\\\Department of Mathematics
   \\\\University of ... \\\\
\\and  Author2
   \\thanks{Research partially supported by ...}
   \\\\Department of Physics
   \\\\State University of ... }
\\date{put in custom date; delete this line for today's date}
\\maketitle

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %  BIBLIOGRAPHY
    %  %use ``bibia'' or ``bibib'' to fill in  bibitems
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\\begin{thebibliography}{}
\\bibitem[]{}   
\\end{thebibliography}

\\end{document}
" nil)
   ("teletter" "%&latex2e--te2letter
\\documentclass{letter}
\\begin{document}
\\signature{yourName}
\\telephone{phone (TTT) EEE-LLLL}
\\begin{letter}{Addressee\\\\
               Address\\\\
               More Address\\\\
               More and more lines separated by double backslashes
               }
\\opening{Dear Whoever,}

The Text

\\closing{Sincerely yours,}
\\end{letter}
\\end{document}
" nil)
   ("temar" "\\textwidth 6.5 truein
\\oddsidemargin 0 truein
\\evensidemargin -0.50 truein
\\topmargin -.5 truein
\\textheight 8.5in" nil)
   ("tepaper" "%&latex2e--tepaper
\\documentclass{article}
\\usepackage{latexsym,amssymb}             % special symbols 
\\usepackage{amsmath}                      % amsmath environments
\\usepackage{amsthm}                       % ams theorem/proof environments
\\usepackage{amscd}                        % ams commutative diagrams 
% \\usepackage{graphicx}                   % graphics commands
% \\usepackage{color}                      % color commands
% \\usepackage{verbatim}                   % comment/verbatim environments

\\newcommand{\\bfi}{\\bfseries\\itshape}      % bold italic

\\makeatletter
\\@addtoreset{figure}{section}
\\def\\thefigure{\\thesection.\\@arabic\\c@figure}
\\def\\fps@figure{h, t}
\\@addtoreset{equation}{section}
\\def\\theequation{\\thesection.\\arabic{equation}}
\\makeatother

        \\theoremstyle{plain} %--default
        \\newtheorem{theorem}             {Theorem}  [section]
        \\newtheorem{lemma}      [theorem]{Lemma}
        \\newtheorem{corollary}  [theorem]{Corollary}
        \\newtheorem{proposition}[theorem]{Proposition}
        \\newtheorem{algorithm}  [theorem]{Algorithm}
        \\newtheorem{criterion}  [theorem]{Criterion}
        \\newtheorem{conjecture} [theorem]{Conjecture}
        \\newtheorem{question}   [theorem]{Question}

        \\theoremstyle{definition}
        \\newtheorem{definition} [theorem]{Definition}
        \\newtheorem{condition}  [theorem]{Condition}
        \\newtheorem{example}    [theorem]{Example}
        \\newtheorem{problem}    [theorem]{Problem}
        \\newtheorem{solution}   [theorem]{Solution}

        \\theoremstyle{remark}
        \\newtheorem{remark}              {Remark}
        \\newtheorem{note}                {Note}
        \\newtheorem{claim}               {Claim}
        \\newtheorem{summary}             {Summary}
        \\newtheorem{case}                {Case}
        \\newtheorem{acknowledgment}      {Acknowledgments}
        \\newtheorem{conclusion}          {Conclusion}
        \\newtheorem{notation}            {Notation}


\\setlength{\\evensidemargin}{0in} \\setlength{\\oddsidemargin}{0in}
\\textwidth=6.5 true in
\\textheight=8 true in
\\topmargin 0cm

\\begin{document}

\\title{Notes}
\\author{Paul Nelson}
\\maketitle

%\\begin{abstract}
%\\end{abstract}

\\section*{Introduction}
Text goes here

%\\begin{acknowledgment}
%\\end{acknowledgment}

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %  BIBLIOGRAPHY
    %  %use ``bibia'' or ``bibib'' to fill in  bibitems
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\\begin{thebibliography}{}
\\bibitem[]{}   
\\end{thebibliography}

\\end{document}
" nil)
   ("tepaper.html" "%article html
  
%% Source: Ross Moore, Macquarie University, Sydney Australia
%% Manual: http://www-dsed.llnl.gov/files/programs/unix/latex2html/manual/

\\documentclass{article}

%% load extra AMS math symbols
\\usepackage[psamsfonts]{amsfonts}

%% and the extended enumerate environments
\\usepackage{enumerate}	


%% These are for making Web pages, using LaTeX2HTML
\\usepackage{html}
\\begin{htmlonly}
\\bodytext{BGCOLOR=#FFFFFF LINK=#9600a8 VLINK=#ff3b21 ALINK=#26ffab}
\\end{htmlonly}

\\usepackage[dvips]{color}
\\begin{htmlonly}
\\pagecolor{white}
\\end{htmlonly}

%% adjust the size and positioning
%% of the text-area on the paper

%begin{latexonly}
\\addtolength{\\voffset}{-2cm}
\\addtolength{\\textheight}{4cm}
\\addtolength{\\hoffset}{-2cm}
\\addtolength{\\textwidth}{4cm}
%end{latexonly}

\\title{}
\\author{}
\\date{}

\\begin{document}
\\maketitle
\\thispagestyle{empty}

%... put text here
\\end{document}" nil)
   ("tepaperamsart" "%&AMS article
\\documentclass{amsart}
\\usepackage{graphicx}
\\newcommand{\\bfi}{\\bfseries\\itshape}

        \\theoremstyle{plain} %--default
        \\newtheorem{theorem}             {Theorem}  [section]
        \\newtheorem{lemma}      [theorem]{Lemma}
        \\newtheorem{corollary}  [theorem]{Corollary}
        \\newtheorem{proposition}[theorem]{Proposition}
        \\newtheorem{algorithm}  [theorem]{Algorithm}
        \\newtheorem{criterion}  [theorem]{Criterion}
        \\newtheorem{conjecture} [theorem]{Conjecture}
        \\newtheorem{question}   [theorem]{Question}

        \\theoremstyle{definition}
        \\newtheorem{definition} [theorem]{Definition}
        \\newtheorem{condition}  [theorem]{Condition}
        \\newtheorem{example}    [theorem]{Example}
        \\newtheorem{problem}    [theorem]{Problem}
        \\newtheorem{solution}   [theorem]{Solution}

        \\theoremstyle{remark}
        \\newtheorem{remark}              {Remark}
        \\newtheorem{note}                {Note}
        \\newtheorem{claim}               {Claim}
        \\newtheorem{summary}             {Summary}
        \\newtheorem{case}                {Case}
        \\newtheorem{acknowledgment}      {Acknowledgments}
        \\newtheorem{conclusion}          {Conclusion}
        \\newtheorem{notation}            {Notation}


                \\numberwithin{equation}{section}

        %----------------------------------------------------
        \\begin{document}

        \\title[put short title here]%
              {Put the real title here\\\\
                and rest of title here}

        \\author[Author One and Author Two]{%
                Author One\\\\
                Author Two\\\\
        }
                \\address{Department of Mathematics\\\\
                         Northeastern University\\\\
                         Boston, Massachusetts 02115}%
                \\address{Mathematical Research Section\\\\
                         School of Mathematical Sciences\\\\
                         Australian National University\\\\
                         Canberra ACT 2601, Australia}


        \\subjclass{Primary 54C40, 14E20; Secondary 46E25, 20C20}
        \\date     {July 2, 1991}

        %         \\thanks will become a 1st page footnote.
        \\thanks{The first author was supported in part by NSF
                Grant \\#000000.}
        %\\dedicatory{}
        \\maketitle
        \\begin{abstract}
                This is the abstract.
        \\end{abstract}

        \\tableofcontents
        \\section{Other headings}
        \\section*{This is an unnumbered first-level section head}
        \\subsection{This is a numbered second-level section head}
        \\subsection*{This is an unnumbered second-level section head}
        \\subsubsection{This is a numbered third-level section head}
        \\subsubsection*{This is an unnumbered third-level section head}

        \\begin{theorem}
                Definition environemnt
        \\end{theorem}

        \\begin{definition}
                Definition environemnt
        \\end{definition}

        \\begin{remark}
                Remark environemnt
        \\end{remark}

        %-----------------
        \\bibliographystyle{}
        \\begin{thebibliography}{}

        \\bibitem[{Arnol$'$d et al. [1982]}] {arnold:sing}
                 Arnol$'$d, V. L., Varchenko, A. N.,
                  and Gusein-Zade, S. M. [1982]
                 \\emph{Singularities of differentiable maps.} I,
                  ``Nauka'', Moscow (Russian);
                 English transl. Birkh\\\"auser, 1985.

        \\bibitem[{Arnol$'$d et al. [1984]}] {arnold:sing2}
        \\bysame [1984]
                \\emph{Singularities of differentiable maps.}~II,
                  ``Nauka'', Moscow;
                 English transl., Birkh\\\"auser, 1988.

        \\end{thebibliography}
        %-----------------
        \\end{document}
" nil)
   ("tepapereqnwith" "%&latex2e--tepaper eqnwith
\\documentclass{article}
\\usepackage{latexsym,amssymb}             % special symbols 
\\usepackage{amsmath}                      % amsmath environments
\\usepackage{amsthm}                       % ams theorem/proof environments
% \\usepackage{amscd}                      % ams commutative diagrams 
% \\usepackage{graphicx}                   % graphics commands
% \\usepackage{color}                      % color commands
% \\usepackage{verbatim}                   % comment/verbatim environments

\\newcommand{\\bfi}{\\bfseries\\itshape}


        \\theoremstyle{plain} %--default
        \\newtheorem{theorem}             {Theorem}  [section]
        \\newtheorem{lemma}      [theorem]{Lemma}
        \\newtheorem{corollary}  [theorem]{Corollary}
        \\newtheorem{proposition}[theorem]{Proposition}
        \\newtheorem{algorithm}  [theorem]{Algorithm}
        \\newtheorem{criterion}  [theorem]{Criterion}
        \\newtheorem{conjecture} [theorem]{Conjecture}
        \\newtheorem{question}   [theorem]{Question}

        \\theoremstyle{definition}
        \\newtheorem{definition} [theorem]{Definition}
        \\newtheorem{condition}  [theorem]{Condition}
        \\newtheorem{example}    [theorem]{Example}
        \\newtheorem{problem}    [theorem]{Problem}
        \\newtheorem{solution}   [theorem]{Solution}

        \\theoremstyle{remark}
        \\newtheorem{remark}              {Remark}
        \\newtheorem{note}                {Note}
        \\newtheorem{claim}               {Claim}
        \\newtheorem{summary}             {Summary}
        \\newtheorem{case}                {Case}
        \\newtheorem{acknowledgment}      {Acknowledgments}
        \\newtheorem{conclusion}          {Conclusion}
        \\newtheorem{notation}            {Notation}



{\\renewcommand{\\theequation}{\\thesection.\\arabic{equation}}
%--------------------------------
\\makeatletter
\\def\\equationwith#1{%
  \\expandafter\\edef\\expandafter\\c@equation%
  \\expandafter{\\csname c@#1\\endcsname}%
  \\expandafter\\let\\expandafter\\theequation\\csname the#1\\endcsname
}
\\makeatother
\\equationwith{theorem}
%--------------------------------

\\begin{document}

\\title{Title of paper}
\\author{ Author1
   \\thanks{Research partially supported by ...}
   \\\\Department of Mathematics
   \\\\University of ... \\\\
\\and  Author2
   \\thanks{Research partially supported by ...}
   \\\\Department of Physics
   \\\\State University of ... }
\\date{put in custom date; delete this line for today's date}
\\maketitle

\\begin{abstract}
This brick is called {\\it paper/eqnwith/template.tex}.
It numbers equations and
theorems within each section, but you are required to insert counters;
it does not require any special style files.
\\end{abstract}

%The counters below will renumber equations in each section.
\\section*{Introduction}
                Text goes here

\\section{First Section Title}
                Text goes here


\\begin{acknowledgment}
We thank ...
\\end{acknowledgment}

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %  BIBLIOGRAPHY
    %  %use ``bibia'' or ``bibib'' to fill in  bibitems
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\\begin{thebibliography}{}
\\bibitem[]{}   
\\end{thebibliography}

\\end{document}
" nil)
   ("tepapersimple" "%&latex2e--tepaper.simple
\\documentclass{article}
\\usepackage{latexsym,amssymb}             % special symbols 
\\usepackage{amsmath}                      % amsmath environments
\\usepackage{amsthm}                       % ams theorem/proof environments
% \\usepackage{amscd}                      % ams commutative diagrams 
% \\usepackage{graphicx}                   % graphics commands
% \\usepackage{color}                      % color commands
% \\usepackage{verbatim}                   % comment/verbatim environments
\\newcommand{\\bfi}{\\bfseries\\itshape}


\\newtheorem{theorem}{Theorem}[section]
\\newtheorem{proposition}[theorem]{Proposition}
\\newtheorem{lemma}[theorem]{Lemma}
\\newtheorem{corollary}[theorem]{Corollary}
\\newtheorem{definition}[theorem]{Definition}

{\\renewcommand{\\theequation}{\\thesection.\\arabic{equation}}

\\begin{document}

\\title{Title of paper}
\\author{ Author1
   \\thanks{Research partially supported by ...}
   \\\\Department of Mathematics
   \\\\University of ... \\\\
\\and  Author2
   \\thanks{Research partially supported by ...}
   \\\\Department of Physics
   \\\\State University of ... }
\\date{put in custom date; delete this line for today's date}
\\maketitle

\\begin{abstract}
This brick is called {\\it paper/simple/template.tex}.
It numbers equations and
theorems within each section, but you are required to insert counters;
it does not require any special style files.
\\end{abstract}

%The counters below will renumber equations in each section.
\\section*{Introduction}
\\setcounter{equation}{0}
                Text goes here

\\section{First Section Title}
\\setcounter{equation}{0}
                Text goes here



\\begin{acknowledgment}
We thank ...
\\end{acknowledgment}

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %  REFERENCES
    %  use ``biba or bibb'' to fill in reference items
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\\section*{References}
\\begin{description}
\\item Author, U. N., ...
\\end{description}

\\end{document}
" nil)
   ("tepapersimplest" "%&latex2e--tepaper simplest
\\documentclass{article}
\\begin{document}

\\title{Title of paper}
\\author{Author1
   \\thanks{Research partially supported by ...}
   \\\\Department of Mathematics
   \\\\University of Nebraska \\\\
\\and
Author2
   \\thanks{Research partially supported by ...}
   \\\\Department of Physics
   \\\\San Jose State University }
\\date{put in custom date; delete this line for today's date}
\\maketitle

\\begin{abstract}
This brick is called {\\it paper/simplest/template.tex}. It uses the
default \\LaTeX\\ numbering, with theorems etc. and equations numbered
consecutively throughout the paper.
\\end{abstract}

\\section*{Introduction}
Text goes here

\\section{First Section Title}
Text goes here

\\section{Second Section Title}
Text goes here

\\bigskip 


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %  REFERENCES
    %  use ``biba or bibb'' to fill in reference items
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

\\section*{References}
\\begin{description}
\\item Author, U. N., ...
\\end{description}

\\end{document}
" nil)
   ("teref" "\\section*{References}
\\begin{description}
\\item   %use ``biba'' to fill in ref. items
\\end{description}" nil)
   ("tfpdu" "\\tfrac{\\partial}{\\partial" nil)
   ("tfu" "\\tfrac{<+++>}{<++>}<++>" dynexp)
   ("tg" "\\tag{<+++>}<++>" dynexp)
   ("tgqeds" "\\tag*{\\qedsymbol}" nil)
   ("tgs" "\\tag*{<+++>}<++>" dynexp)
   ("tgsu" "\\tag*{<+++>}<++>" dynexp)
   ("tgu" "\\tag{<+++>}<++>" dynexp)
   ("thaf" "\\tfrac{1}{2}" nil)
   ("thmsty" "           \\theoremstyle{plain} %--default
        \\newtheorem{theorem}             {Theorem}  [section]
        \\newtheorem{lemma}      [theorem]{Lemma}
        \\newtheorem{corollary}  [theorem]{Corollary}
        \\newtheorem{proposition}[theorem]{Proposition}
        \\newtheorem{algorithm}  [theorem]{Algorithm}
        \\newtheorem{criterion}  [theorem]{Criterion}
        \\newtheorem{conjecture} [theorem]{Conjecture}
        \\newtheorem{question}   [theorem]{Question}

        \\theoremstyle{definition}
        \\newtheorem{definition} [theorem]{Definition}
        \\newtheorem{condition}  [theorem]{Condition}
        \\newtheorem{example}    [theorem]{Example}
        \\newtheorem{problem}    [theorem]{Problem}
        \\newtheorem{solution}   [theorem]{Solution}

        \\theoremstyle{remark}
        \\newtheorem{remark}              {Remark}
        \\newtheorem{note}                {Note}
        \\newtheorem{claim}               {Claim}
        \\newtheorem{summary}             {Summary}
        \\newtheorem{case}                {Case}
        \\newtheorem{acknowledgment}      {Acknowledgments}
        \\newtheorem{conclusion}          {Conclusion}
        \\newtheorem{notation}            {Notation}
" nil)
   ("ti" "\\times" nil)
   ("tk" "\\substack{
<+++> 
}<++>" dynexp)
   ("tn" "\\tan" nil)
   ("tnh" "\\tanh" nil)
   ("triap" "(a_1, a_2, a_3)" dynexp-delete-leading-space)
   ("trv" "\\pitchfork" nil)
   ("tskp" "\\topskip 24pt" nil)
   ("tsp" "\\;" nil)
   ("tsq" "T^\\ast Q" dynexp-surround-with-dollars-unless-texmathp)
   ("tsqq" "T^{\\ast}_{q} Q" dynexp-surround-with-dollars-unless-texmathp)
   ("tsz" " \\textstyle" nil)
   ("ttu" "{\\tt<+++>}<++>" dynexp)
   ("txi" "\\text{ if } <+++>" dynexp)
   ("txo" "\\text{ otherwise<+++>}<++>" dynexp)
   ("txt" "\\text{<+++>}<++>" dynexp)
   ("txtit" "\\textit{<+++>}<++>" dynexp)
   ("txtbf" "\\textbf{<+++>}<++>" dynexp)
   ("txtitu" "\\textit{<+++>}<++>" dynexp)
   ("txtqa" "\\quad \\text{and}\\quad" nil)
   ("txtqu" "\\quad\\text{}\\quad" nil)
   ("txtrm" "\\textrm{<+++>}<++>" dynexp)
   ("txtrmu" "\\textrm{<+++>}<++>" dynexp)
   ("txtsc" "\\textsc{<+++>}<++>" dynexp)
   ("txtscu" "\\textsc{<+++>}<++>" dynexp)
   ("txtsf" "\\textsf{<+++>}<++>" dynexp)
   ("txtsfu" "\\textsf{<+++>}<++>" dynexp)
   ("txtsl" "\\textsl{<+++>}<++>" dynexp)
   ("txtslu" "\\textsl{text slanting inside math mode" nil)
   ("txtsty" "\\textstyle{<+++>}<++>" dynexp)
   ("txtstyu" "\\textstyle{<+++>}<++>" dynexp)
   ("txttt" "\\texttt{<+++>}<++>" dynexp)
   ("txtttu" "\\texttt{<+++>}<++>" dynexp)
   ("txtu" "\\text{<+++>}<++>" dynexp)
   ("txtup" "\\textup{<+++>}<++>" dynexp)
   ("txtupu" "\\textup{<+++>}<++>" dynexp)
   ("txu" "\\text{<+++>}<++>" dynexp)
   ("ua" "\\\"{a}" nil)
   ("ubr" "\\underbrace
{
<+++>
}_{
<++>
}<++>" dynexp)
   ("ula" "\\underline{a}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulca" "\\underline{A}" dynexp-surround-with-dollars-unless-texmathp)
   ("dula" "\\underline{a}" dynexp-surround-with-dollars)
   ("dulca" "\\underline{A}" dynexp-surround-with-dollars)
   ("ulb" "\\underline{b}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcb" "\\underline{B}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulb" "\\underline{b}" dynexp-surround-with-dollars)
   ("dulcb" "\\underline{B}" dynexp-surround-with-dollars)
   ("ulc" "\\underline{c}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcc" "\\underline{C}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulc" "\\underline{c}" dynexp-surround-with-dollars)
   ("dulcc" "\\underline{C}" dynexp-surround-with-dollars)
   ("uld" "\\underline{d}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcd" "\\underline{D}" dynexp-surround-with-dollars-unless-texmathp)
   ("duld" "\\underline{d}" dynexp-surround-with-dollars)
   ("dulcd" "\\underline{D}" dynexp-surround-with-dollars)
   ("ule" "\\underline{e}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulce" "\\underline{E}" dynexp-surround-with-dollars-unless-texmathp)
   ("dule" "\\underline{e}" dynexp-surround-with-dollars)
   ("dulce" "\\underline{E}" dynexp-surround-with-dollars)
   ("ulf" "\\underline{f}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcf" "\\underline{F}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulf" "\\underline{f}" dynexp-surround-with-dollars)
   ("dulcf" "\\underline{F}" dynexp-surround-with-dollars)
   ("ulg" "\\underline{g}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcg" "\\underline{G}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulg" "\\underline{g}" dynexp-surround-with-dollars)
   ("dulcg" "\\underline{G}" dynexp-surround-with-dollars)
   ("ulh" "\\underline{h}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulch" "\\underline{H}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulh" "\\underline{h}" dynexp-surround-with-dollars)
   ("dulch" "\\underline{H}" dynexp-surround-with-dollars)
   ("uli" "\\underline{i}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulci" "\\underline{I}" dynexp-surround-with-dollars-unless-texmathp)
   ("duli" "\\underline{i}" dynexp-surround-with-dollars)
   ("dulci" "\\underline{I}" dynexp-surround-with-dollars)
   ("ulj" "\\underline{j}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcj" "\\underline{J}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulj" "\\underline{j}" dynexp-surround-with-dollars)
   ("dulcj" "\\underline{J}" dynexp-surround-with-dollars)
   ("ulk" "\\underline{k}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulck" "\\underline{K}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulk" "\\underline{k}" dynexp-surround-with-dollars)
   ("dulck" "\\underline{K}" dynexp-surround-with-dollars)
   ("ull" "\\underline{l}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcl" "\\underline{L}" dynexp-surround-with-dollars-unless-texmathp)
   ("dull" "\\underline{l}" dynexp-surround-with-dollars)
   ("dulcl" "\\underline{L}" dynexp-surround-with-dollars)
   ("ulm" "\\underline{m}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcm" "\\underline{M}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulm" "\\underline{m}" dynexp-surround-with-dollars)
   ("dulcm" "\\underline{M}" dynexp-surround-with-dollars)
   ("uln" "\\underline{n}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcn" "\\underline{N}" dynexp-surround-with-dollars-unless-texmathp)
   ("duln" "\\underline{n}" dynexp-surround-with-dollars)
   ("dulcn" "\\underline{N}" dynexp-surround-with-dollars)
   ("ulo" "\\underline{o}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulco" "\\underline{O}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulo" "\\underline{o}" dynexp-surround-with-dollars)
   ("dulco" "\\underline{O}" dynexp-surround-with-dollars)
   ("ulp" "\\underline{p}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcp" "\\underline{P}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulp" "\\underline{p}" dynexp-surround-with-dollars)
   ("dulcp" "\\underline{P}" dynexp-surround-with-dollars)
   ("ulq" "\\underline{q}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcq" "\\underline{Q}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulq" "\\underline{q}" dynexp-surround-with-dollars)
   ("dulcq" "\\underline{Q}" dynexp-surround-with-dollars)
   ("ulr" "\\underline{r}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcr" "\\underline{R}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulr" "\\underline{r}" dynexp-surround-with-dollars)
   ("dulcr" "\\underline{R}" dynexp-surround-with-dollars)
   ("uls" "\\underline{s}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcs" "\\underline{S}" dynexp-surround-with-dollars-unless-texmathp)
   ("duls" "\\underline{s}" dynexp-surround-with-dollars)
   ("dulcs" "\\underline{S}" dynexp-surround-with-dollars)
   ("ult" "\\underline{t}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulct" "\\underline{T}" dynexp-surround-with-dollars-unless-texmathp)
   ("dult" "\\underline{t}" dynexp-surround-with-dollars)
   ("dulct" "\\underline{T}" dynexp-surround-with-dollars)
   ("uluu" "\\underline{u}" nil)
   ("ulcu" "\\underline{U}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulu" "\\underline{u}" dynexp-surround-with-dollars)
   ("dulcu" "\\underline{U}" dynexp-surround-with-dollars)
   ("ulv" "\\underline{v}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcv" "\\underline{V}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulv" "\\underline{v}" dynexp-surround-with-dollars)
   ("dulcv" "\\underline{V}" dynexp-surround-with-dollars)
   ("ulx" "\\underline{x}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcx" "\\underline{X}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulx" "\\underline{x}" dynexp-surround-with-dollars)
   ("dulcx" "\\underline{X}" dynexp-surround-with-dollars)
   ("ulw" "\\underline{w}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcw" "\\underline{W}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulw" "\\underline{w}" dynexp-surround-with-dollars)
   ("dulcw" "\\underline{W}" dynexp-surround-with-dollars)
   ("uly" "\\underline{y}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcy" "\\underline{Y}" dynexp-surround-with-dollars-unless-texmathp)
   ("duly" "\\underline{y}" dynexp-surround-with-dollars)
   ("dulcy" "\\underline{Y}" dynexp-surround-with-dollars)
   ("ulz" "\\underline{z}" dynexp-surround-with-dollars-unless-texmathp)
   ("ulcz" "\\underline{Z}" dynexp-surround-with-dollars-unless-texmathp)
   ("dulz" "\\underline{z}" dynexp-surround-with-dollars)
   ("dulcz" "\\underline{Z}" dynexp-surround-with-dollars)
   ("uco" "\\\"{O}" nil)
   ("ucu" "\\\"{U}" nil)
   ("uhr" "\\upharpoonright" nil)
   ("ulu" "\\underline{<+++>}<++>" dynexp)
   ("uni" "\\cup" nil)
   ("uni1" "\\bigcup^{n}_{i = 1}" nil)
   ("unst" "\\underset{}{<+++>}<++>" dynexp)
   ("unstu" "\\underset{<+++>}<++>" dynexp)
   ("uo" "\\\"{o}" nil)
   ("upa" "\\uparrow" nil)
   ("doa" "\\downarrow" nil)
   ("upkg" "\\usepackage{<+++>}<++>" dynexp)
   ("upkgams" "\\usepackage{amsmath,amssymb,eufrak,amsthm,amscd}" nil)
   ("upkgclr" "\\usepackage{color}" nil)
   ("upkgeuc" "\\usepackage{eucal}" nil)
   ("upkgeuf" "\\usepackage{eufrak}" nil)
   ("upkggr" "\\usepackage{graphicx}" nil)
   ("upkgu" "\\usepackage{<+++>}<++>" dynexp)
   ("upkgvrb" "\\usepackage{verbatim}" nil)
   ("uu" "\\\"{u}" nil)
   ("vb" "\\mid" nil)
   ("mvb" "\\middle\\vert" nil)
   ("vds" "\\vdots" nil)
   ("ve" "\\vee" nil)
   ("vfi" "\\vfill" nil)
   ("vil" "\\varinjlim" nil)
   ("voila" "voilá" nil)
   ("vpl" "\\varprojlim" nil)
   ("vrb" "\\verb|<+++>|<++>" dynexp)
   ("vskp" "\\vskip 12pt" nil)
   ("vsp" "\\vspace{<+++>}<++>" dynexp)
   ("vspu" "\\vspace{<+++>}<++>" dynexp)
   ("wace" "accelerate" nil)
   ("wacn" "acceleration" nil)
   ("wacs" "accelerates" nil)
   ("wcdm" "Department of Mathematics" nil)
   ("wcdp" "Department of Physics" nil)
   ("wcle" "calculate" nil)
   ("wcln" "calculation" nil)
   ("wcls" "calculates" nil)
   ("wder" "derivative" nil)
   ("wders" "derivatives" nil)
   ("wdm" "department of mathematics" nil)
   ("wdp" "department of physics" nil)
   ("wed" "\\wedge" nil)
   ("wep" "Euler-Poincar\\'e" nil)
   ("weqn" "equation" nil)
   ("weqns" "equations" nil)
   ("wex" "example" nil)
   ("wfun" "function" nil)
   ("wfuns" "functions" nil)
   ("wgm" "geometry" nil)
   ("wgmc" "geometric" nil)
   ("wie" "i.e.," nil)
   ("wig" "integral" nil)
   ("wigb" "integrable" nil)
   ("wign" "integration" nil)
   ("wigs" "integrals" nil)
   ("wiie" "{\\it i.e.,\\/}" nil)
   ("wlig" "line integral" nil)
   ("wligs" "line integrals" nil)
   ("wmx" "matrix" nil)
   ("wneg" "negative" nil)
   ("wnl" "nonlinear" nil)
   ("wnly" "nonlinearity" nil)
   ("wpf" "\\wp" nil)
   ("wpos" "positive" nil)
   ("wprp" "perpendicular" nil)
   ("wrel" "relative" nil)
   ("wrln" "relation" nil)
   ("wrtg" "rotating" nil)
   ("wrtn" "rotation" nil)
   ("wrtns" "rotations" nil)
   ("wsn" "solution" nil)
   ("wsns" "solutions" nil)
   ("wtm" "theorem" nil)
   ("wtms" "theorems" nil)
   ("wty" "theory" nil)
   ("wun" "university" nil)
   ("wve" "vector" nil)
   ("wvel" "velocity" nil)
   ("wvs" "vectors" nil)
   ("xa" "\\alpha" dynexp-surround-with-dollars-unless-texmathp)
   ("xb" "\\beta" dynexp-surround-with-dollars-unless-texmathp)
   ("xc" "\\chi" dynexp-surround-with-dollars-unless-texmathp)
   ("xcd" "\\Delta" dynexp-surround-with-dollars-unless-texmathp)
   ("xcg" "\\Gamma" dynexp-surround-with-dollars-unless-texmathp)
   ("xcl" "\\Lambda" dynexp-surround-with-dollars-unless-texmathp)
   ("xco" "\\Omega" dynexp-surround-with-dollars-unless-texmathp)
   ("xcp" "\\Pi" dynexp-surround-with-dollars-unless-texmathp)
   ("xcph" "\\Phi" dynexp-surround-with-dollars-unless-texmathp)
   ("xcps" "\\Psi" dynexp-surround-with-dollars-unless-texmathp)
   ("xcs" "\\Sigma" dynexp-surround-with-dollars-unless-texmathp)
   ("xcth" "\\Theta" dynexp-surround-with-dollars-unless-texmathp)
   ("xcu" "\\Upsilon" dynexp-surround-with-dollars-unless-texmathp)
   ("xcx" "\\Xi" dynexp-surround-with-dollars-unless-texmathp)
   ("xd" "\\delta" dynexp-surround-with-dollars-unless-texmathp)
   ("xdra" "\\xdashrightarrow{<+++>}<++>" dynexp)
   ("xe" "\\eps" dynexp-surround-with-dollars-unless-texmathp)
   ("xet" "\\eta" dynexp-surround-with-dollars-unless-texmathp)
   ("xg" "\\gamma" dynexp-surround-with-dollars-unless-texmathp)
   ("xio" "\\iota" dynexp-surround-with-dollars-unless-texmathp)
   ("xk" "\\kappa" dynexp-surround-with-dollars-unless-texmathp)
   ("xl" "\\lambda" dynexp-surround-with-dollars-unless-texmathp)
   ("xla" "\\xleftarrow{<+++>}<++>" dynexp)
   ("xln" "x_n" nil)
   ("xm" "\\mu" dynexp-surround-with-dollars-unless-texmathp)
   ("xn" "\\nu" dynexp-surround-with-dollars-unless-texmathp)
   ("xo" "\\omega" dynexp-surround-with-dollars-unless-texmathp)
   ("xp" "\\pi" dynexp-surround-with-dollars-unless-texmathp)
   ("xph" "\\phi" dynexp-surround-with-dollars-unless-texmathp)
   ("xps" "\\psi" dynexp-surround-with-dollars-unless-texmathp)
   ("xpyq" "x^2 + y^2" dynexp-surround-with-dollars-unless-texmathp)
   ("xq" "x^2" nil)
   ("xr" "\\rho" dynexp-surround-with-dollars-unless-texmathp)
   ("xra" "\\xrightarrow{<+++>}<++>" dynexp)
   ("xs" "\\sigma" dynexp-surround-with-dollars-unless-texmathp)
   ("xt" "\\tau" dynexp-surround-with-dollars-unless-texmathp)
   ("xth" "\\theta" dynexp-surround-with-dollars-unless-texmathp)
   ("xu" "\\upsilon" dynexp-surround-with-dollars-unless-texmathp)
   ("xve" "\\varepsilon" dynexp-surround-with-dollars-unless-texmathp)
   ("xvp" "\\varpi" dynexp-surround-with-dollars-unless-texmathp)
   ("xvph" "\\varphi" dynexp-surround-with-dollars-unless-texmathp)
   ("xvr" "\\varrho" dynexp-surround-with-dollars-unless-texmathp)
   ("xvs" "\\varsigma" dynexp-surround-with-dollars-unless-texmathp)
   ("xvth" "\\vartheta" dynexp-surround-with-dollars-unless-texmathp)
   ("xx" "\\xi" nil)
   ("xyp" "(x, y)" dynexp-delete-leading-space)
   ("xyzp" "(x, y, z)" dynexp-delete-leading-space)
   ("xz" "\\zeta" dynexp-surround-with-dollars-unless-texmathp)
   ("yln" "y_n" nil)
   ("yq" "y^2" nil)
   ("zc" "\\begin{equation*}
<+++>
\\end{equation*}<++>" dynexp)
   ("zln" "z_n" nil)
   ("zq" "z^2" nil)
   ("zx" "" dynexp-inline-math)
   ("fj" "\\(<+++>\\)<++>" dynexp)
   ("jf" "\\[
  <+++>
\\]<++>" dynexp)
   ))
