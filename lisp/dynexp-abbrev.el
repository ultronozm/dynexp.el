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
   ("AA" "\\mathbb{A}" dynexp-surround-with-dollars)
   ("dAA" "$\\mathbb{A}$" nil)
   ("oAA" "(\\mathbb{A})" dynexp-delete-leading-space)
   ("BB" "\\mathbb{B}" dynexp-surround-with-dollars)
   ("dBB" "$\\mathbb{B}$" nil)
   ("oBB" "(\\mathbb{B})" dynexp-delete-leading-space)
   ("CC" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("dCC" "$\\mathbb{C}$" nil)
   ("oCC" "(\\mathbb{C})" dynexp-delete-leading-space)
   ("DD" "\\mathbb{D}" dynexp-surround-with-dollars)
   ("dDD" "$\\mathbb{D}$" nil)
   ("oDD" "(\\mathbb{D})" dynexp-delete-leading-space)
   ("EE" "\\mathbb{E}" dynexp-surround-with-dollars)
   ("dEE" "$\\mathbb{E}$" nil)
   ("oEE" "(\\mathbb{E})" dynexp-delete-leading-space)
   ("FF" "\\mathbb{F}" dynexp-surround-with-dollars)
   ("dFF" "$\\mathbb{F}$" nil)
   ("oFF" "(\\mathbb{F})" dynexp-delete-leading-space)
   ("GG" "\\mathbb{G}" dynexp-surround-with-dollars)
   ("dGG" "$\\mathbb{G}$" nil)
   ("oGG" "(\\mathbb{G})" dynexp-delete-leading-space)
   ("HH" "\\mathbb{H}" dynexp-surround-with-dollars)
   ("dHH" "$\\mathbb{H}$" nil)
   ("oHH" "(\\mathbb{H})" dynexp-delete-leading-space)
   ("II" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("dII" "$\\mathbb{I}$" nil)
   ("oII" "(\\mathbb{I})" dynexp-delete-leading-space)
   ("JJ" "\\mathbb{J}" dynexp-surround-with-dollars)
   ("dJJ" "$\\mathbb{J}$" nil)
   ("oJJ" "(\\mathbb{J})" dynexp-delete-leading-space)
   ("KK" "\\mathbb{K}" dynexp-surround-with-dollars)
   ("dKK" "$\\mathbb{K}$" nil)
   ("oKK" "(\\mathbb{K})" dynexp-delete-leading-space)
   ("LL" "\\mathbb{L}" dynexp-surround-with-dollars)
   ("dLL" "$\\mathbb{L}$" nil)
   ("oLL" "(\\mathbb{L})" dynexp-delete-leading-space)
   ("MM" "\\mathbb{M}" dynexp-surround-with-dollars)
   ("dMM" "$\\mathbb{M}$" nil)
   ("oMM" "(\\mathbb{M})" dynexp-delete-leading-space)
   ("NN" "\\mathbb{N}" dynexp-surround-with-dollars)
   ("dNN" "$\\mathbb{N}$" nil)
   ("oNN" "(\\mathbb{N})" dynexp-delete-leading-space)
   ("OO" "\\mathbb{O}" dynexp-surround-with-dollars)
   ("dOO" "$\\mathbb{O}$" nil)
   ("oOO" "(\\mathbb{O})" dynexp-delete-leading-space)
   ("PP" "\\mathbb{P}" dynexp-surround-with-dollars)
   ("dPP" "$\\mathbb{P}$" nil)
   ("oPP" "(\\mathbb{P})" dynexp-delete-leading-space)
   ("QQ" "\\mathbb{Q}" dynexp-surround-with-dollars)
   ("dQQ" "$\\mathbb{Q}$" nil)
   ("oQQ" "(\\mathbb{Q})" dynexp-delete-leading-space)
   ("RR" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("dRR" "$\\mathbb{R}$" nil)
   ("oRR" "(\\mathbb{R})" dynexp-delete-leading-space)
   ("SS" "\\mathbb{S}" dynexp-surround-with-dollars)
   ("dSS" "$\\mathbb{S}$" nil)
   ("oSS" "(\\mathbb{S})" dynexp-delete-leading-space)
   ("TT" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("dTT" "$\\mathbb{T}$" nil)
   ("oTT" "(\\mathbb{T})" dynexp-delete-leading-space)
   ("UU" "\\mathbb{U}" dynexp-surround-with-dollars)
   ("dUU" "$\\mathbb{U}$" nil)
   ("oUU" "(\\mathbb{U})" dynexp-delete-leading-space)
   ("VV" "\\mathbb{V}" dynexp-surround-with-dollars)
   ("dVV" "$\\mathbb{V}$" nil)
   ("oVV" "(\\mathbb{V})" dynexp-delete-leading-space)
   ("WW" "\\mathbb{W}" dynexp-surround-with-dollars)
   ("dWW" "$\\mathbb{W}$" nil)
   ("oWW" "(\\mathbb{W})" dynexp-delete-leading-space)
   ("XX" "\\mathbb{X}" dynexp-surround-with-dollars)
   ("dXX" "$\\mathbb{X}$" nil)
   ("oXX" "(\\mathbb{X})" dynexp-delete-leading-space)
   ("YY" "\\mathbb{Y}" dynexp-surround-with-dollars)
   ("dYY" "$\\mathbb{Y}$" nil)
   ("oYY" "(\\mathbb{Y})" dynexp-delete-leading-space)
   ("ZZ" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("dZZ" "$\\mathbb{Z}$" nil)
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
   ("Kuhne" "Kühne" nil)
   ("Lindelof" "Lindelöf" nil)
   ("Neron" "Néron" nil)
   ("Plucker" "Plücker" nil)
   ("Zurich" "Zürich" nil)
   ("Teichmuller" "Teichmüller" nil)
   ("Poincare" "Poincaré" nil)
   ("Szego" "Szegö" nil)
   ("Szemeredi" "Szemerédi" nil)
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
   ("b0" "\\mathbf{0}" dynexp-surround-with-dollars)
   ("b1" "\\mathbf{1}" dynexp-surround-with-dollars)
   ("b10" "\\mathbf{10}" dynexp-surround-with-dollars)
   ("b2" "\\mathbf{2}" dynexp-surround-with-dollars)
   ("b3" "\\mathbf{3}" dynexp-surround-with-dollars)
   ("b4" "\\mathbf{4}" dynexp-surround-with-dollars)
   ("b5" "\\mathbf{5}" dynexp-surround-with-dollars)
   ("b6" "\\mathbf{6}" dynexp-surround-with-dollars)
   ("b7" "\\mathbf{7}" dynexp-surround-with-dollars)
   ("b8" "\\mathbf{8}" dynexp-surround-with-dollars)
   ("b9" "\\mathbf{9}" dynexp-surround-with-dollars)
   ("ba" "\\mathbf{a}" dynexp-surround-with-dollars)
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
   ("bbca" "\\mathbb{A}" dynexp-surround-with-dollars)
   ("bbca1" "\\mathbb{A}^1" dynexp-surround-with-dollars)
   ("bbca2" "\\mathbb{A}^2" dynexp-surround-with-dollars)
   ("bbca3" "\\mathbb{A}^3" dynexp-surround-with-dollars)
   ("bbcam" "\\mathbb{A}^m" dynexp-surround-with-dollars)
   ("bbcan" "\\mathbb{A}^n" dynexp-surround-with-dollars)
   ("bbcb" "\\mathbb{B}" dynexp-surround-with-dollars)
   ("bbcb1" "\\mathbb{B}^1" dynexp-surround-with-dollars)
   ("bbcb2" "\\mathbb{B}^2" dynexp-surround-with-dollars)
   ("bbcb3" "\\mathbb{B}^3" dynexp-surround-with-dollars)
   ("bbcbm" "\\mathbb{B}^m" dynexp-surround-with-dollars)
   ("bbcbn" "\\mathbb{B}^n" dynexp-surround-with-dollars)
   ("bbcc" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("bbcc1" "\\mathbb{C}^1" dynexp-surround-with-dollars)
   ("bbcc2" "\\mathbb{C}^2" dynexp-surround-with-dollars)
   ("bbcc3" "\\mathbb{C}^3" dynexp-surround-with-dollars)
   ("bbccm" "\\mathbb{C}^m" dynexp-surround-with-dollars)
   ("bbccn" "\\mathbb{C}^n" dynexp-surround-with-dollars)
   ("bbcd" "\\mathbb{D}" dynexp-surround-with-dollars)
   ("bbcd1" "\\mathbb{D}^1" dynexp-surround-with-dollars)
   ("bbcd2" "\\mathbb{D}^2" dynexp-surround-with-dollars)
   ("bbcd3" "\\mathbb{D}^3" dynexp-surround-with-dollars)
   ("bbcdm" "\\mathbb{D}^m" dynexp-surround-with-dollars)
   ("bbcdn" "\\mathbb{D}^n" dynexp-surround-with-dollars)
   ("bbce" "\\mathbb{E}" dynexp-surround-with-dollars)
   ("bbce1" "\\mathbb{E}^1" dynexp-surround-with-dollars)
   ("bbce2" "\\mathbb{E}^2" dynexp-surround-with-dollars)
   ("bbce3" "\\mathbb{E}^3" dynexp-surround-with-dollars)
   ("bbcem" "\\mathbb{E}^m" dynexp-surround-with-dollars)
   ("bbcen" "\\mathbb{E}^n" dynexp-surround-with-dollars)
   ("bbcf" "\\mathbb{F}" dynexp-surround-with-dollars)
   ("bbcf1" "\\mathbb{F}^1" dynexp-surround-with-dollars)
   ("bbcf2" "\\mathbb{F}^2" dynexp-surround-with-dollars)
   ("bbcf3" "\\mathbb{F}^3" dynexp-surround-with-dollars)
   ("bbcfm" "\\mathbb{F}^m" dynexp-surround-with-dollars)
   ("bbcfn" "\\mathbb{F}^n" dynexp-surround-with-dollars)
   ("bbcg" "\\mathbb{G}" dynexp-surround-with-dollars)
   ("bbcg1" "\\mathbb{G}^1" dynexp-surround-with-dollars)
   ("bbcg2" "\\mathbb{G}^2" dynexp-surround-with-dollars)
   ("bbcg3" "\\mathbb{G}^3" dynexp-surround-with-dollars)
   ("bbcgm" "\\mathbb{G}^m" dynexp-surround-with-dollars)
   ("bbcgn" "\\mathbb{G}^n" dynexp-surround-with-dollars)
   ("bbch" "\\mathbb{H}" dynexp-surround-with-dollars)
   ("bbch1" "\\mathbb{H}^1" dynexp-surround-with-dollars)
   ("bbch2" "\\mathbb{H}^2" dynexp-surround-with-dollars)
   ("bbch3" "\\mathbb{H}^3" dynexp-surround-with-dollars)
   ("bbchm" "\\mathbb{H}^m" dynexp-surround-with-dollars)
   ("bbchn" "\\mathbb{H}^n" dynexp-surround-with-dollars)
   ("bbci" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("bbci1" "\\mathbb{I}^1" dynexp-surround-with-dollars)
   ("bbci2" "\\mathbb{I}^2" dynexp-surround-with-dollars)
   ("bbci3" "\\mathbb{I}^3" dynexp-surround-with-dollars)
   ("bbcim" "\\mathbb{I}^m" dynexp-surround-with-dollars)
   ("bbcin" "\\mathbb{I}^n" dynexp-surround-with-dollars)
   ("bbcj" "\\mathbb{J}" dynexp-surround-with-dollars)
   ("bbcj1" "\\mathbb{J}^1" dynexp-surround-with-dollars)
   ("bbcj2" "\\mathbb{J}^2" dynexp-surround-with-dollars)
   ("bbcj3" "\\mathbb{J}^3" dynexp-surround-with-dollars)
   ("bbcjm" "\\mathbb{J}^m" dynexp-surround-with-dollars)
   ("bbcjn" "\\mathbb{J}^n" dynexp-surround-with-dollars)
   ("bbck" "\\mathbb{K}" dynexp-surround-with-dollars)
   ("bbck1" "\\mathbb{K}^1" dynexp-surround-with-dollars)
   ("bbck2" "\\mathbb{K}^2" dynexp-surround-with-dollars)
   ("bbck3" "\\mathbb{K}^3" dynexp-surround-with-dollars)
   ("bbckm" "\\mathbb{K}^m" dynexp-surround-with-dollars)
   ("bbckn" "\\mathbb{K}^n" dynexp-surround-with-dollars)
   ("bbcl" "\\mathbb{L}" dynexp-surround-with-dollars)
   ("bbcl1" "\\mathbb{L}^1" dynexp-surround-with-dollars)
   ("bbcl2" "\\mathbb{L}^2" dynexp-surround-with-dollars)
   ("bbcl3" "\\mathbb{L}^3" dynexp-surround-with-dollars)
   ("bbclm" "\\mathbb{L}^m" dynexp-surround-with-dollars)
   ("bbcln" "\\mathbb{L}^n" dynexp-surround-with-dollars)
   ("bbcm" "\\mathbb{M}" dynexp-surround-with-dollars)
   ("bbcm1" "\\mathbb{M}^1" dynexp-surround-with-dollars)
   ("bbcm2" "\\mathbb{M}^2" dynexp-surround-with-dollars)
   ("bbcm3" "\\mathbb{M}^3" dynexp-surround-with-dollars)
   ("bbcmm" "\\mathbb{M}^m" dynexp-surround-with-dollars)
   ("bbcmn" "\\mathbb{M}^n" dynexp-surround-with-dollars)
   ("bbcn" "\\mathbb{N}" dynexp-surround-with-dollars)
   ("bbcn1" "\\mathbb{N}^1" dynexp-surround-with-dollars)
   ("bbcn2" "\\mathbb{N}^2" dynexp-surround-with-dollars)
   ("bbcn3" "\\mathbb{N}^3" dynexp-surround-with-dollars)
   ("bbcnm" "\\mathbb{N}^m" dynexp-surround-with-dollars)
   ("bbcnn" "\\mathbb{N}^n" dynexp-surround-with-dollars)
   ("bbco" "\\mathbb{O}" dynexp-surround-with-dollars)
   ("bbco1" "\\mathbb{O}^1" dynexp-surround-with-dollars)
   ("bbco2" "\\mathbb{O}^2" dynexp-surround-with-dollars)
   ("bbco3" "\\mathbb{O}^3" dynexp-surround-with-dollars)
   ("bbcom" "\\mathbb{O}^m" dynexp-surround-with-dollars)
   ("bbcon" "\\mathbb{O}^n" dynexp-surround-with-dollars)
   ("bbcp" "\\mathbb{P}" dynexp-surround-with-dollars)
   ("bbcp1" "\\mathbb{P}^1" dynexp-surround-with-dollars)
   ("bbcp2" "\\mathbb{P}^2" dynexp-surround-with-dollars)
   ("bbcp3" "\\mathbb{P}^3" dynexp-surround-with-dollars)
   ("bbcpm" "\\mathbb{P}^m" dynexp-surround-with-dollars)
   ("bbcpn" "\\mathbb{P}^n" dynexp-surround-with-dollars)
   ("bbcq" "\\mathbb{Q}" dynexp-surround-with-dollars)
   ("bbcq1" "\\mathbb{Q}^1" dynexp-surround-with-dollars)
   ("bbcq2" "\\mathbb{Q}^2" dynexp-surround-with-dollars)
   ("bbcq3" "\\mathbb{Q}^3" dynexp-surround-with-dollars)
   ("bbcqm" "\\mathbb{Q}^m" dynexp-surround-with-dollars)
   ("bbcqn" "\\mathbb{Q}^n" dynexp-surround-with-dollars)
   ("bbcr" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("bbcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars)
   ("bbcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars)
   ("bbcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars)
   ("bbcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars)
   ("bbcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars)
   ("bbcs" "\\mathbb{S}" dynexp-surround-with-dollars)
   ("bbcs1" "\\mathbb{S}^1" dynexp-surround-with-dollars)
   ("bbcs2" "\\mathbb{S}^2" dynexp-surround-with-dollars)
   ("bbcs3" "\\mathbb{S}^3" dynexp-surround-with-dollars)
   ("bbcsm" "\\mathbb{S}^m" dynexp-surround-with-dollars)
   ("bbcsn" "\\mathbb{S}^n" dynexp-surround-with-dollars)
   ("bbct" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("bbct1" "\\mathbb{T}^1" dynexp-surround-with-dollars)
   ("bbct2" "\\mathbb{T}^2" dynexp-surround-with-dollars)
   ("bbct3" "\\mathbb{T}^3" dynexp-surround-with-dollars)
   ("bbctm" "\\mathbb{T}^m" dynexp-surround-with-dollars)
   ("bbctn" "\\mathbb{T}^n" dynexp-surround-with-dollars)
   ("bbcu" "\\mathbb{U}" dynexp-surround-with-dollars)
   ("bbcu1" "\\mathbb{U}^1" dynexp-surround-with-dollars)
   ("bbcu2" "\\mathbb{U}^2" dynexp-surround-with-dollars)
   ("bbcu3" "\\mathbb{U}^3" dynexp-surround-with-dollars)
   ("bbcum" "\\mathbb{U}^m" dynexp-surround-with-dollars)
   ("bbcun" "\\mathbb{U}^n" dynexp-surround-with-dollars)
   ("bbcv" "\\mathbb{V}" dynexp-surround-with-dollars)
   ("bbcv1" "\\mathbb{V}^1" dynexp-surround-with-dollars)
   ("bbcv2" "\\mathbb{V}^2" dynexp-surround-with-dollars)
   ("bbcv3" "\\mathbb{V}^3" dynexp-surround-with-dollars)
   ("bbcvm" "\\mathbb{V}^m" dynexp-surround-with-dollars)
   ("bbcvn" "\\mathbb{V}^n" dynexp-surround-with-dollars)
   ("bbcw" "\\mathbb{W}" dynexp-surround-with-dollars)
   ("bbcw1" "\\mathbb{W}^1" dynexp-surround-with-dollars)
   ("bbcw2" "\\mathbb{W}^2" dynexp-surround-with-dollars)
   ("bbcw3" "\\mathbb{W}^3" dynexp-surround-with-dollars)
   ("bbcwm" "\\mathbb{W}^m" dynexp-surround-with-dollars)
   ("bbcwn" "\\mathbb{W}^n" dynexp-surround-with-dollars)
   ("bbcx" "\\mathbb{X}" dynexp-surround-with-dollars)
   ("bbcx1" "\\mathbb{X}^1" dynexp-surround-with-dollars)
   ("bbcx2" "\\mathbb{X}^2" dynexp-surround-with-dollars)
   ("bbcx3" "\\mathbb{X}^3" dynexp-surround-with-dollars)
   ("bbcxm" "\\mathbb{X}^m" dynexp-surround-with-dollars)
   ("bbcxn" "\\mathbb{X}^n" dynexp-surround-with-dollars)
   ("bbcy" "\\mathbb{Y}" dynexp-surround-with-dollars)
   ("bbcy1" "\\mathbb{Y}^1" dynexp-surround-with-dollars)
   ("bbcy2" "\\mathbb{Y}^2" dynexp-surround-with-dollars)
   ("bbcy3" "\\mathbb{Y}^3" dynexp-surround-with-dollars)
   ("bbcym" "\\mathbb{Y}^m" dynexp-surround-with-dollars)
   ("bbcyn" "\\mathbb{Y}^n" dynexp-surround-with-dollars)
   ("bbcz" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("bbcz1" "\\mathbb{Z}^1" dynexp-surround-with-dollars)
   ("bbcz2" "\\mathbb{Z}^2" dynexp-surround-with-dollars)
   ("bbcz3" "\\mathbb{Z}^3" dynexp-surround-with-dollars)
   ("bbczm" "\\mathbb{Z}^m" dynexp-surround-with-dollars)
   ("bbczn" "\\mathbb{Z}^n" dynexp-surround-with-dollars)
   ("bbib" "\\begin{thebibliography}{<+++>}<++>" dynexp)
   ("bbu" "\\mathbb{<+++>}<++>" dynexp)
   ("bca" "\\mathbf{A}" dynexp-surround-with-dollars)
   ("bcas" "\\begin{cases}
<+++> 
& <++>
\\end{cases}<++>" dynexp)
   ("bcb" "\\mathbf{B}" dynexp-surround-with-dollars)
   ("bcc" "\\mathbf{C}" dynexp-surround-with-dollars)
   ("bcd" "\\mathbf{D}" dynexp-surround-with-dollars)
   ("bce" "\\mathbf{E}" dynexp-surround-with-dollars)
   ("bcf" "\\mathbf{F}" dynexp-surround-with-dollars)
   ("bcg" "\\mathbf{G}" dynexp-surround-with-dollars)
   ("bch" "\\mathbf{H}" dynexp-surround-with-dollars)
   ("bci" "\\mathbf{I}" dynexp-surround-with-dollars)
   ("bcj" "\\mathbf{J}" dynexp-surround-with-dollars)
   ("bck" "\\mathbf{K}" dynexp-surround-with-dollars)
   ("bcl" "\\mathbf{L}" dynexp-surround-with-dollars)
   ("bclm" "\\begin{claim}
<+++>
\\end{claim}<++>" dynexp-fold)
   ("bcm" "\\mathbf{M}" dynexp-surround-with-dollars)
   ("bcmnt" "\\begin{comment}
<+++>
\\end{comment}<++>" dynexp)
   ("bcn" "\\mathbf{N}" dynexp-surround-with-dollars)
   ("bcncl" "\\begin{conclusion}
<+++>
\\end{conclusion}<++>" dynexp-fold)
   ("bcnd" "\\begin{condition}
<+++>
\\end{condition}<++>" dynexp)
   ("bcnj" "\\begin{conjecture}
<+++>
\\end{conjecture}<++>" dynexp-fold)
   ("bco" "\\mathbf{O}" dynexp-surround-with-dollars)
   ("bcor" "\\begin{corollary}
<+++>
\\end{corollary}<++>" dynexp-fold)
   ("bcp" "\\mathbf{P}" dynexp-surround-with-dollars)
   ("bcq" "\\mathbf{Q}" dynexp-surround-with-dollars)
   ("bcr" "\\mathbf{R}" dynexp-surround-with-dollars)
   ("bcrit" "\\begin{criterion}
<+++>
\\end{criterion}<++>" dynexp-fold)
   ("bcs" "\\mathbf{S}" dynexp-surround-with-dollars)
   ("bct" "\\mathbf{T}" dynexp-surround-with-dollars)
   ("bctr" "\\begin{center}
<+++>
\\end{center}<++>" dynexp)
   ("bcu" "\\mathbf{U}" dynexp-surround-with-dollars)
   ("bcv" "\\mathbf{V}" dynexp-surround-with-dollars)
   ("bcw" "\\mathbf{W}" dynexp-surround-with-dollars)
   ("bcx" "\\mathbf{X}" dynexp-surround-with-dollars)
   ("bcy" "\\mathbf{Y}" dynexp-surround-with-dollars)
   ("bcz" "\\mathbf{Z}" dynexp-surround-with-dollars)
   ("bd" "\\mathbf{d}" dynexp-surround-with-dollars)
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
   ("bg" "\\mathbf{g}" dynexp-surround-with-dollars)
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
   ("bh" "\\mathbf{h}" dynexp-surround-with-dollars)
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
   ("bj" "\\mathbf{j}" dynexp-surround-with-dollars)
   ("bk" "\\mathbf{k}" dynexp-surround-with-dollars)
   ("bksl" "\\" nil)
   ("bl" "\\mathbf{l}" dynexp-surround-with-dollars)
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
   ("bm" "\\mathbf{m}" dynexp-surround-with-dollars)
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
   ("bn" "\\mathbf{n}" dynexp-surround-with-dollars)
   ("bno" "\\binom{<+++>}{<++>}<++>" dynexp)
   ("bnota" "\\begin{notation}
<+++>
\\end{notation}<++>" dynexp-fold)
   ("bnote" "\\begin{note}
<+++>
\\end{note}<++>" dynexp-fold)
   ("bo" "\\mathbf{o}" dynexp-surround-with-dollars)
   ("bopl" "\\boxplus" nil)
   ("bp" "\\mathbf{p}" dynexp-surround-with-dollars)
   ("bprf" "\\begin{proof}
<+++>
\\end{proof}<++>" dynexp-fold)
   ("bprob" "\\begin{problem}
<+++>
\\end{problem}<++>" dynexp-fold)
   ("bprop" "\\begin{proposition}
<+++>
\\end{proposition}<++>" dynexp-fold)
   ("bq" "\\mathbf{q}" dynexp-surround-with-dollars)
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
   ("br" "\\mathbf{r}" dynexp-surround-with-dollars)
   ("brmk" "\\begin{remark}
<+++>
\\end{remark}<++>" dynexp-fold)
   ("bs" "\\mathbf{s}" dynexp-surround-with-dollars)
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
   ("bt" "\\mathbf{t}" dynexp-surround-with-dollars)
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
   ("bu" "\\mathbf{u}" dynexp-surround-with-dollars)
   ("buni" "\\bigcup" nil)
   ("bv" "\\mathbf{v}" dynexp-surround-with-dollars)
   ("bvrb" "\\begin{verbatim}
<+++>
\\end{verbatim}<++>" dynexp-fold)
   ("bw" "\\mathbf{w}" dynexp-surround-with-dollars)
   ("bx" "\\mathbf{x}" dynexp-surround-with-dollars)
   ("bxca" "\\begin{xca}
<+++>
\\end{xca}<++>" dynexp)
   ("bxcb" "\\begin{xcb}
<+++>
\\end{xcb}<++>" dynexp)
   ("byy" "\\mathbf{y}" nil)
   ("bz" "\\mathbf{z}" dynexp-surround-with-dollars)
   ("capt" "\\caption{<+++>}<++>" dynexp)
   ("captu" "\\caption{<+++>}<++>" dynexp)
   ("cau" "\\mathcal{<+++>}<++>" dynexp)
   ("cbx" "      %========================================================%
      %                                                        %
      %========================================================%
" nil)
   ("cca" "\\mathcal{A}" dynexp-surround-with-dollars)
   ("ccb" "\\mathcal{B}" dynexp-surround-with-dollars)
   ("ccc" "\\mathcal{C}" dynexp-surround-with-dollars)
   ("ccd" "\\mathcal{D}" dynexp-surround-with-dollars)
   ("cce" "\\mathcal{E}" dynexp-surround-with-dollars)
   ("ccf" "\\mathcal{F}" dynexp-surround-with-dollars)
   ("ccg" "\\mathcal{G}" dynexp-surround-with-dollars)
   ("cch" "\\mathcal{H}" dynexp-surround-with-dollars)
   ("cci" "\\mathcal{I}" dynexp-surround-with-dollars)
   ("ccj" "\\mathcal{J}" dynexp-surround-with-dollars)
   ("cck" "\\mathcal{K}" dynexp-surround-with-dollars)
   ("ccl" "\\mathcal{L}" dynexp-surround-with-dollars)
   ("ccm" "\\mathcal{M}" dynexp-surround-with-dollars)
   ("ccn" "\\mathcal{N}" dynexp-surround-with-dollars)
   ("cco" "\\mathcal{O}" dynexp-surround-with-dollars)
   ("ccp" "\\mathcal{P}" dynexp-surround-with-dollars)
   ("ccq" "\\mathcal{Q}" dynexp-surround-with-dollars)
   ("ccr" "\\mathcal{R}" dynexp-surround-with-dollars)
   ("ccs" "\\mathcal{S}" dynexp-surround-with-dollars)
   ("cct" "\\mathcal{T}" dynexp-surround-with-dollars)
   ("ccu" "\\mathcal{U}" dynexp-surround-with-dollars)
   ("ccv" "\\mathcal{V}" dynexp-surround-with-dollars)
   ("ccw" "\\mathcal{W}" dynexp-surround-with-dollars)
   ("ccx" "\\mathcal{X}" dynexp-surround-with-dollars)
   ("ccy" "\\mathcal{Y}" dynexp-surround-with-dollars)
   ("ccz" "\\mathcal{Z}" dynexp-surround-with-dollars)
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
   ("d0" "$0$" nil)
   ("d00p" "$(0,0)$" nil)
   ("d03p" "$(0, 0, 0)$" nil)
   ("d0p" "$(0)$" nil)
   ("d1" "$1$" nil)
   ("d10" "$10$" nil)
   ("d2" "$2$" nil)
   ("d3" "$3$" nil)
   ("d4" "$4$" nil)
   ("d5" "$5$" nil)
   ("d6" "$6$" nil)
   ("d7" "$7$" nil)
   ("d8" "$8$" nil)
   ("d9" "$9$" nil)
   ("da" "$a$" nil)
   ("db" "$b$" nil)
   ("db0" "$\\mathbf{0}$" nil)
   ("db1" "$\\mathbf{1}$" nil)
   ("db10" "$\\mathbf{10}$" nil)
   ("db2" "$\\mathbf{2}$" nil)
   ("db3" "$\\mathbf{3}$" nil)
   ("db4" "$\\mathbf{4}$" nil)
   ("db5" "$\\mathbf{5}$" nil)
   ("db6" "$\\mathbf{6}$" nil)
   ("db7" "$\\mathbf{7}$" nil)
   ("db8" "$\\mathbf{8}$" nil)
   ("db9" "$\\mathbf{9}$" nil)
   ("dba" "$\\mathbf{a}$" nil)
   ("dbb" "$\\mathbf{b}$" nil)
   ("dbbca" "$\\mathbb{A}$" nil)
   ("dbbca1" "$\\mathbb{A}^1$" nil)
   ("dbbca2" "$\\mathbb{A}^2$" nil)
   ("dbbca3" "$\\mathbb{A}^3$" nil)
   ("dbbcam" "$\\mathbb{A}^m$" nil)
   ("dbbcan" "$\\mathbb{A}^n$" nil)
   ("dbbcb" "$\\mathbb{B}$" nil)
   ("dbbcb1" "$\\mathbb{B}^1$" nil)
   ("dbbcb2" "$\\mathbb{B}^2$" nil)
   ("dbbcb3" "$\\mathbb{B}^3$" nil)
   ("dbbcbm" "$\\mathbb{B}^m$" nil)
   ("dbbcbn" "$\\mathbb{B}^n$" nil)
   ("dbbcc" "$\\mathbb{C}$" nil)
   ("dbbcc1" "$\\mathbb{C}^1$" nil)
   ("dbbcc2" "$\\mathbb{C}^2$" nil)
   ("dbbcc3" "$\\mathbb{C}^3$" nil)
   ("dbbccm" "$\\mathbb{C}^m$" nil)
   ("dbbccn" "$\\mathbb{C}^n$" nil)
   ("dbbcd" "$\\mathbb{D}$" nil)
   ("dbbcd1" "$\\mathbb{D}^1$" nil)
   ("dbbcd2" "$\\mathbb{D}^2$" nil)
   ("dbbcd3" "$\\mathbb{D}^3$" nil)
   ("dbbcdm" "$\\mathbb{D}^m$" nil)
   ("dbbcdn" "$\\mathbb{D}^n$" nil)
   ("dbbce" "$\\mathbb{E}$" nil)
   ("dbbce1" "$\\mathbb{E}^1$" nil)
   ("dbbce2" "$\\mathbb{E}^2$" nil)
   ("dbbce3" "$\\mathbb{E}^3$" nil)
   ("dbbcem" "$\\mathbb{E}^m$" nil)
   ("dbbcen" "$\\mathbb{E}^n$" nil)
   ("dbbcf" "$\\mathbb{F}$" nil)
   ("dbbcf1" "$\\mathbb{F}^1$" nil)
   ("dbbcf2" "$\\mathbb{F}^2$" nil)
   ("dbbcf3" "$\\mathbb{F}^3$" nil)
   ("dbbcfm" "$\\mathbb{F}^m$" nil)
   ("dbbcfn" "$\\mathbb{F}^n$" nil)
   ("dbbcg" "$\\mathbb{G}$" nil)
   ("dbbcg1" "$\\mathbb{G}^1$" nil)
   ("dbbcg2" "$\\mathbb{G}^2$" nil)
   ("dbbcg3" "$\\mathbb{G}^3$" nil)
   ("dbbcgm" "$\\mathbb{G}^m$" nil)
   ("dbbcgn" "$\\mathbb{G}^n$" nil)
   ("dbbch" "$\\mathbb{H}$" nil)
   ("dbbch1" "$\\mathbb{H}^1$" nil)
   ("dbbch2" "$\\mathbb{H}^2$" nil)
   ("dbbch3" "$\\mathbb{H}^3$" nil)
   ("dbbchm" "$\\mathbb{H}^m$" nil)
   ("dbbchn" "$\\mathbb{H}^n$" nil)
   ("dbbci" "$\\mathbb{I}$" nil)
   ("dbbci1" "$\\mathbb{I}^1$" nil)
   ("dbbci2" "$\\mathbb{I}^2$" nil)
   ("dbbci3" "$\\mathbb{I}^3$" nil)
   ("dbbcim" "$\\mathbb{I}^m$" nil)
   ("dbbcin" "$\\mathbb{I}^n$" nil)
   ("dbbcj" "$\\mathbb{J}$" nil)
   ("dbbcj1" "$\\mathbb{J}^1$" nil)
   ("dbbcj2" "$\\mathbb{J}^2$" nil)
   ("dbbcj3" "$\\mathbb{J}^3$" nil)
   ("dbbcjm" "$\\mathbb{J}^m$" nil)
   ("dbbcjn" "$\\mathbb{J}^n$" nil)
   ("dbbck" "$\\mathbb{K}$" nil)
   ("dbbck1" "$\\mathbb{K}^1$" nil)
   ("dbbck2" "$\\mathbb{K}^2$" nil)
   ("dbbck3" "$\\mathbb{K}^3$" nil)
   ("dbbckm" "$\\mathbb{K}^m$" nil)
   ("dbbckn" "$\\mathbb{K}^n$" nil)
   ("dbbcl" "$\\mathbb{L}$" nil)
   ("dbbcl1" "$\\mathbb{L}^1$" nil)
   ("dbbcl2" "$\\mathbb{L}^2$" nil)
   ("dbbcl3" "$\\mathbb{L}^3$" nil)
   ("dbbclm" "$\\mathbb{L}^m$" nil)
   ("dbbcln" "$\\mathbb{L}^n$" nil)
   ("dbbcm" "$\\mathbb{M}$" nil)
   ("dbbcm1" "$\\mathbb{M}^1$" nil)
   ("dbbcm2" "$\\mathbb{M}^2$" nil)
   ("dbbcm3" "$\\mathbb{M}^3$" nil)
   ("dbbcmm" "$\\mathbb{M}^m$" nil)
   ("dbbcmn" "$\\mathbb{M}^n$" nil)
   ("dbbcn" "$\\mathbb{N}$" nil)
   ("dbbcn1" "$\\mathbb{N}^1$" nil)
   ("dbbcn2" "$\\mathbb{N}^2$" nil)
   ("dbbcn3" "$\\mathbb{N}^3$" nil)
   ("dbbcnm" "$\\mathbb{N}^m$" nil)
   ("dbbcnn" "$\\mathbb{N}^n$" nil)
   ("dbbco" "$\\mathbb{O}$" nil)
   ("dbbco1" "$\\mathbb{O}^1$" nil)
   ("dbbco2" "$\\mathbb{O}^2$" nil)
   ("dbbco3" "$\\mathbb{O}^3$" nil)
   ("dbbcom" "$\\mathbb{O}^m$" nil)
   ("dbbcon" "$\\mathbb{O}^n$" nil)
   ("dbbcp" "$\\mathbb{P}$" nil)
   ("dbbcp1" "$\\mathbb{P}^1$" nil)
   ("dbbcp2" "$\\mathbb{P}^2$" nil)
   ("dbbcp3" "$\\mathbb{P}^3$" nil)
   ("dbbcpm" "$\\mathbb{P}^m$" nil)
   ("dbbcpn" "$\\mathbb{P}^n$" nil)
   ("dbbcq" "$\\mathbb{Q}$" nil)
   ("dbbcq1" "$\\mathbb{Q}^1$" nil)
   ("dbbcq2" "$\\mathbb{Q}^2$" nil)
   ("dbbcq3" "$\\mathbb{Q}^3$" nil)
   ("dbbcqm" "$\\mathbb{Q}^m$" nil)
   ("dbbcqn" "$\\mathbb{Q}^n$" nil)
   ("dbbcr" "$\\mathbb{R}$" nil)
   ("dbbcr1" "$\\mathbb{R}^1$" nil)
   ("dbbcr2" "$\\mathbb{R}^2$" nil)
   ("dbbcr3" "$\\mathbb{R}^3$" nil)
   ("dbbcrm" "$\\mathbb{R}^m$" nil)
   ("dbbcrn" "$\\mathbb{R}^n$" nil)
   ("dbbcs" "$\\mathbb{S}$" nil)
   ("dbbcs1" "$\\mathbb{S}^1$" nil)
   ("dbbcs2" "$\\mathbb{S}^2$" nil)
   ("dbbcs3" "$\\mathbb{S}^3$" nil)
   ("dbbcsm" "$\\mathbb{S}^m$" nil)
   ("dbbcsn" "$\\mathbb{S}^n$" nil)
   ("dbbct" "$\\mathbb{T}$" nil)
   ("dbbct1" "$\\mathbb{T}^1$" nil)
   ("dbbct2" "$\\mathbb{T}^2$" nil)
   ("dbbct3" "$\\mathbb{T}^3$" nil)
   ("dbbctm" "$\\mathbb{T}^m$" nil)
   ("dbbctn" "$\\mathbb{T}^n$" nil)
   ("dbbcu" "$\\mathbb{U}$" nil)
   ("dbbcu1" "$\\mathbb{U}^1$" nil)
   ("dbbcu2" "$\\mathbb{U}^2$" nil)
   ("dbbcu3" "$\\mathbb{U}^3$" nil)
   ("dbbcum" "$\\mathbb{U}^m$" nil)
   ("dbbcun" "$\\mathbb{U}^n$" nil)
   ("dbbcv" "$\\mathbb{V}$" nil)
   ("dbbcv1" "$\\mathbb{V}^1$" nil)
   ("dbbcv2" "$\\mathbb{V}^2$" nil)
   ("dbbcv3" "$\\mathbb{V}^3$" nil)
   ("dbbcvm" "$\\mathbb{V}^m$" nil)
   ("dbbcvn" "$\\mathbb{V}^n$" nil)
   ("dbbcw" "$\\mathbb{W}$" nil)
   ("dbbcw1" "$\\mathbb{W}^1$" nil)
   ("dbbcw2" "$\\mathbb{W}^2$" nil)
   ("dbbcw3" "$\\mathbb{W}^3$" nil)
   ("dbbcwm" "$\\mathbb{W}^m$" nil)
   ("dbbcwn" "$\\mathbb{W}^n$" nil)
   ("dbbcx" "$\\mathbb{X}$" nil)
   ("dbbcx1" "$\\mathbb{X}^1$" nil)
   ("dbbcx2" "$\\mathbb{X}^2$" nil)
   ("dbbcx3" "$\\mathbb{X}^3$" nil)
   ("dbbcxm" "$\\mathbb{X}^m$" nil)
   ("dbbcxn" "$\\mathbb{X}^n$" nil)
   ("dbbcy" "$\\mathbb{Y}$" nil)
   ("dbbcy1" "$\\mathbb{Y}^1$" nil)
   ("dbbcy2" "$\\mathbb{Y}^2$" nil)
   ("dbbcy3" "$\\mathbb{Y}^3$" nil)
   ("dbbcym" "$\\mathbb{Y}^m$" nil)
   ("dbbcyn" "$\\mathbb{Y}^n$" nil)
   ("dbbcz" "$\\mathbb{Z}$" nil)
   ("dbbcz1" "$\\mathbb{Z}^1$" nil)
   ("dbbcz2" "$\\mathbb{Z}^2$" nil)
   ("dbbcz3" "$\\mathbb{Z}^3$" nil)
   ("dbbczm" "$\\mathbb{Z}^m$" nil)
   ("dbbczn" "$\\mathbb{Z}^n$" nil)
   ("dbc" "$\\mathbf{c}$" nil)
   ("dbca" "$\\mathbf{A}$" nil)
   ("dbcb" "$\\mathbf{B}$" nil)
   ("dbcc" "$\\mathbf{C}$" nil)
   ("dbcd" "$\\mathbf{D}$" nil)
   ("dbce" "$\\mathbf{E}$" nil)
   ("dbcf" "$\\mathbf{F}$" nil)
   ("dbcg" "$\\mathbf{G}$" nil)
   ("dbch" "$\\mathbf{H}$" nil)
   ("dbci" "$\\mathbf{I}$" nil)
   ("dbcj" "$\\mathbf{J}$" nil)
   ("dbck" "$\\mathbf{K}$" nil)
   ("dbcl" "$\\mathbf{L}$" nil)
   ("dbcm" "$\\mathbf{M}$" nil)
   ("dbcn" "$\\mathbf{N}$" nil)
   ("dbco" "$\\mathbf{O}$" nil)
   ("dbcp" "$\\mathbf{P}$" nil)
   ("dbcq" "$\\mathbf{Q}$" nil)
   ("dbcr" "$\\mathbf{R}$" nil)
   ("dbcs" "$\\mathbf{S}$" nil)
   ("dbct" "$\\mathbf{T}$" nil)
   ("dbcu" "$\\mathbf{U}$" nil)
   ("dbcv" "$\\mathbf{V}$" nil)
   ("dbcw" "$\\mathbf{W}$" nil)
   ("dbcx" "$\\mathbf{X}$" nil)
   ("dbcy" "$\\mathbf{Y}$" nil)
   ("dbcz" "$\\mathbf{Z}$" nil)
   ("dbd" "$\\mathbf{d}$" nil)
   ("dbe" "$\\mathbf{e}$" nil)
   ("dbf" "$\\mathbf{f}$" nil)
   ("dbg" "$\\mathbf{g}$" nil)
   ("dbh" "$\\mathbf{h}$" nil)
   ("dbi" "$\\mathbf{i}$" nil)
   ("dbj" "$\\mathbf{j}$" nil)
   ("dbk" "$\\mathbf{k}$" nil)
   ("dbl" "$\\mathbf{l}$" nil)
   ("dbm" "$\\mathbf{m}$" nil)
   ("dbn" "$\\mathbf{n}$" nil)
   ("dbo" "$\\mathbf{o}$" nil)
   ("dbp" "$\\mathbf{p}$" nil)
   ("dbq" "$\\mathbf{q}$" nil)
   ("dbr" "$\\mathbf{r}$" nil)
   ("dbs" "$\\mathbf{s}$" nil)
   ("dbsy" "$\\boldsymbol{<+++>}<++>" dynexp)
   ("dbsyu" "$\\boldsymbol{}$" nil)
   ("dbt" "$\\mathbf{t}$" nil)
   ("dbu" "$\\mathbf{u}$" nil)
   ("dbv" "$\\mathbf{v}$" nil)
   ("dbw" "$\\mathbf{w}$" nil)
   ("dbx" "$\\mathbf{x}$" nil)
   ("dby" "$\\mathbf{y}$" nil)
   ("dbz" "$\\mathbf{z}$" nil)
   ("dc" "$c$" nil)
   ("dca" "$A$" nil)
   ("dcart" "\\documentclass{article}" nil)
   ("dcarta4" "\\documentclass[a4paper]{article}" nil)
   ("dcb" "$B$" nil)
   ("dcbook" "\\documentclass{book}" nil)
   ("dcc" "$C$" nil)
   ("dcca" "$\\mathcal{A}$" nil)
   ("dccb" "$\\mathcal{B}$" nil)
   ("dccc" "$\\mathcal{C}$" nil)
   ("dccd" "$\\mathcal{D}$" nil)
   ("dcce" "$\\mathcal{E}$" nil)
   ("dccf" "$\\mathcal{F}$" nil)
   ("dccg" "$\\mathcal{G}$" nil)
   ("dcch" "$\\mathcal{H}$" nil)
   ("dcci" "$\\mathcal{I}$" nil)
   ("dccj" "$\\mathcal{J}$" nil)
   ("dcck" "$\\mathcal{K}$" nil)
   ("dccl" "$\\mathcal{L}$" nil)
   ("dccm" "$\\mathcal{M}$" nil)
   ("dccn" "$\\mathcal{N}$" nil)
   ("dcco" "$\\mathcal{O}$" nil)
   ("dccp" "$\\mathcal{P}$" nil)
   ("dccq" "$\\mathcal{Q}$" nil)
   ("dccr" "$\\mathcal{R}$" nil)
   ("dccs" "$\\mathcal{S}$" nil)
   ("dcct" "$\\mathcal{T}$" nil)
   ("dccu" "$\\mathcal{U}$" nil)
   ("dccv" "$\\mathcal{V}$" nil)
   ("dccw" "$\\mathcal{W}$" nil)
   ("dccx" "$\\mathcal{X}$" nil)
   ("dccy" "$\\mathcal{Y}$" nil)
   ("dccz" "$\\mathcal{Z}$" nil)
   ("dcd" "$D$" nil)
   ("dce" "$E$" nil)
   ("dcf" "$F$" nil)
   ("dcg" "$G$" nil)
   ("dch" "$H$" nil)
   ("dci" "$I$" nil)
   ("dcj" "$J$" nil)
   ("dck" "$K$" nil)
   ("dcl" "$L$" nil)
   ("dclet" "\\documentclass{letter}" nil)
   ("dcm" "$M$" nil)
   ("dcn" "$N$" nil)
   ("dco" "$O$" nil)
   ("dcp" "$P$" nil)
   ("dcq" "$Q$" nil)
   ("dcr" "$R$" nil)
   ("dcrep" "\\documentclass{report}" nil)
   ("dcs" "$S$" nil)
   ("dct" "$T$" nil)
   ("dcu" "$U$" nil)
   ("dcv" "$V$" nil)
   ("dcw" "$W$" nil)
   ("dcx" "$X$" nil)
   ("dcy" "$Y$" nil)
   ("dcz" "$Z$" nil)
   ("dd" "$d$" nil)
   ("dds" "\\ddots" nil)
   ("de" "$e$" nil)
   ("def" ":=" nil)
   ("deq" "\\doteq" nil)
   ("df" "$f$" nil)
   ("dfrbox" "\\fbox{\\fbox{\\parbox{2.0in}{
\\centerline{\\large \\bf type header} text }}}" nil)
   ("dg" "$g$" nil)
   ("dgma" "$\\mathfrak{a}$" nil)
   ("dgmas" "$\\mathfrak{a}^{\\ast}$" nil)
   ("ax" "\\ast" dynexp-surround-with-dollars)
   ("dgmb" "$\\mathfrak{b}$" nil)
   ("dgmbs" "$\\mathfrak{b}^{\\ast}$" nil)
   ("dgmc" "$\\mathfrak{c}$" nil)
   ("dgmca" "$\\mathfrak{A}$" nil)
   ("dgmcb" "$\\mathfrak{B}$" nil)
   ("dgmcc" "$\\mathfrak{C}$" nil)
   ("dgmcd" "$\\mathfrak{D}$" nil)
   ("dgmce" "$\\mathfrak{E}$" nil)
   ("dgmcf" "$\\mathfrak{F}$" nil)
   ("dgmcg" "$\\mathfrak{G}$" nil)
   ("dgmch" "$\\mathfrak{H}$" nil)
   ("dgmci" "$\\mathfrak{I}$" nil)
   ("dgmcj" "$\\mathfrak{J}$" nil)
   ("dgmck" "$\\mathfrak{K}$" nil)
   ("dgmcl" "$\\mathfrak{L}$" nil)
   ("dgmcm" "$\\mathfrak{M}$" nil)
   ("dgmcn" "$\\mathfrak{N}$" nil)
   ("dgmco" "$\\mathfrak{O}$" nil)
   ("dgmcp" "$\\mathfrak{P}$" nil)
   ("dgmcq" "$\\mathfrak{Q}$" nil)
   ("dgmcr" "$\\mathfrak{R}$" nil)
   ("dgmcs" "$\\mathfrak{S}$" nil)
   ("dgmct" "$\\mathfrak{T}$" nil)
   ("dgmcu" "$\\mathfrak{U}$" nil)
   ("dgmcv" "$\\mathfrak{V}$" nil)
   ("dgmcw" "$\\mathfrak{W}$" nil)
   ("dgmcx" "$\\mathfrak{X}$" nil)
   ("dgmcy" "$\\mathfrak{Y}$" nil)
   ("dgmcz" "$\\mathfrak{Z}$" nil)
   ("dgmd" "$\\mathfrak{d}$" nil)
   ("dgmds" "$\\mathfrak{d}^{\\ast}$" nil)
   ("dgme" "$\\mathfrak{e}$" nil)
   ("dgmes" "$\\mathfrak{e}^{\\ast}$" nil)
   ("dgmf" "$\\mathfrak{f}$" nil)
   ("dgmfs" "$\\mathfrak{f}^{\\ast}$" nil)
   ("dgmg" "$\\mathfrak{g}$" nil)
   ("dgmgs" "$\\mathfrak{g}^{\\ast}$" nil)
   ("dgmh" "$\\mathfrak{h}$" nil)
   ("dgmhs" "$\\mathfrak{h}^{\\ast}$" nil)
   ("dgmi" "$\\mathfrak{i}$" nil)
   ("dgmis" "$\\mathfrak{i}^{\\ast}$" nil)
   ("dgmj" "$\\mathfrak{j}$" nil)
   ("dgmjs" "$\\mathfrak{j}^{\\ast}$" nil)
   ("dgmk" "$\\mathfrak{k}$" nil)
   ("dgmks" "$\\mathfrak{k}^{\\ast}$" nil)
   ("dgml" "$\\mathfrak{l}$" nil)
   ("dgmls" "$\\mathfrak{l}^{\\ast}$" nil)
   ("dgmm" "$\\mathfrak{m}$" nil)
   ("dgmms" "$\\mathfrak{m}^{\\ast}$" nil)
   ("dgmn" "$\\mathfrak{n}$" nil)
   ("dgmns" "$\\mathfrak{n}^{\\ast}$" nil)
   ("dgmo" "$\\mathfrak{o}$" nil)
   ("dgmos" "$\\mathfrak{o}^{\\ast}$" nil)
   ("dgmp" "$\\mathfrak{p}$" nil)
   ("dgmps" "$\\mathfrak{p}^{\\ast}$" nil)
   ("dgmq" "$\\mathfrak{q}$" nil)
   ("dgmqs" "$\\mathfrak{q}^{\\ast}$" nil)
   ("dgmr" "$\\mathfrak{r}$" nil)
   ("dgmrs" "$\\mathfrak{r}^{\\ast}$" nil)
   ("dgms" "$\\mathfrak{s}$" nil)
   ("dgmss" "$\\mathfrak{s}^{\\ast}$" nil)
   ("dgmt" "$\\mathfrak{t}$" nil)
   ("dgmts" "$\\mathfrak{t}^{\\ast}$" nil)
   ("dgmu" "$\\mathfrak{u}$" nil)
   ("dgmus" "$\\mathfrak{u}^{\\ast}$" nil)
   ("dgmv" "$\\mathfrak{v}$" nil)
   ("dgmvs" "$\\mathfrak{v}^{\\ast}$" nil)
   ("dgmw" "$\\mathfrak{w}$" nil)
   ("dgmws" "$\\mathfrak{w}^{\\ast}$" nil)
   ("dgmx" "$\\mathfrak{x}$" nil)
   ("dgmxs" "$\\mathfrak{x}^{\\ast}$" nil)
   ("dgmy" "$\\mathfrak{y}$" nil)
   ("dgmys" "$\\mathfrak{y}^{\\ast}$" nil)
   ("dgmz" "$\\mathfrak{z}$" nil)
   ("dgmzs" "$\\mathfrak{z}^{\\ast}$" nil)
   ("dh" "$h$" nil)
   ("di" "$i$" nil)
   ("difni" "$\\infty$" nil)
   ("dinfi" "$\\infty$" nil)
   ("minfi" "-\\infty" nil)
   ("disu" "{\\displaystyle" nil)
   ("divi" "\\div" nil)
   ("dj" "$j$" nil)
   ("dju" "\\sqcup" nil)
   ("dk" "$k$" nil)
   ("dl" "$l$" nil)
   ("dm" "$m$" nil)
   ("dmn" "\\dim" nil)
   ("dn" "$n$" nil)
   ("doo" "$o$" nil)
   ("dopcc" "$\\mathbb{C}$" nil)
   ("dopci" "$\\mathbb{I}$" nil)
   ("dopcr" "$\\mathbb{R}$" nil)
   ("dopcr1" "$\\mathbb{R}^1$" nil)
   ("dopcr2" "$\\mathbb{R}^2$" nil)
   ("dopcr3" "$\\mathbb{R}^3$" nil)
   ("dopcrm" "$\\mathbb{R}^m$" nil)
   ("dopcrn" "$\\mathbb{R}^n$" nil)
   ("dopct" "$\\mathbb{T}$" nil)
   ("dopcz" "$\\mathbb{Z}$" nil)
   ("dopso3" "$\\operatorname{so(3)}$" nil)
   ("dovstcpp" "$\\overset{\\longrightarrow}{\\text{PP}}$" nil)
   ("dovstcpq" "$\\overset{\\longrightarrow}{\\text{PQ}}" nil)
   ("dovv" "$\\vec{v}$" nil)
   ("dp" "$p$" nil)
   ("dpdzy" "$\\partial z/\\partial y$" nil)
   ("dq" "$q$" nil)
   ("dr" "$r$" nil)
   ("drpl" "$\\mathbb{R}_+$" nil)
   ("drplt" "$\\mathbb{R}_+^times$" nil)
   ("ds" "$s$" nil)
   ("dsc" "\\,\\frac{d s}{2 \\pi i}" nil)
   ("dsp" "\\qquad" nil)
   ("dsz" " \\displaystyle" nil)
   ("dt" "$t$" nil)
   ("dti" "\\,d^\\times" nil)
   ("dtriap" "$(a_1, a_2, a_3)$" nil)
   ("dtsq" "$T^\\ast Q$" nil)
   ("dtsqq" "$T^{\\ast}_{q} Q$" nil)
   ("dtt" "\\det" nil)
   ("dgg" "\\deg" nil)
   ("du" "$u$" nil)
   ("dv" "$v$" nil)
   ("dw" "$w$" nil)
   ("dx" "$x$" nil)
   ("dxa" "$\\alpha$" nil)
   ("dxb" "$\\beta$" nil)
   ("dxc" "$\\chi$" nil)
   ("dxcd" "$\\Delta$" nil)
   ("dxcg" "$\\Gamma$" nil)
   ("dxcl" "$\\Lambda$" nil)
   ("dxco" "$\\Omega$" nil)
   ("dxcp" "$\\Pi$" nil)
   ("dxcph" "$\\Phi$" nil)
   ("dxcps" "$\\Psi$" nil)
   ("dxcs" "$\\Sigma$" nil)
   ("dxcth" "$\\Theta$" nil)
   ("dxcu" "$\\Upsilon$" nil)
   ("dxcx" "$\\Xi$" nil)
   ("dxd" "$\\delta$" nil)
   ("dxdt" "dx/dt" nil)
   ("dxdy" "\\,dx\\,dy" nil)
   ("dxdydz" "\\,dx\\,dy\\,dz" nil)
   ("dxe" "$\\eps$" nil)
   ("dxet" "$\\eta$" nil)
   ("dxg" "$\\gamma$" nil)
   ("dxio" "$\\iota$" nil)
   ("dxk" "$\\kappa$" nil)
   ("dxl" "$\\lambda$" nil)
   ("dxm" "$\\mu$" nil)
   ("dxn" "$\\nu$" nil)
   ("dxo" "$\\omega$" nil)
   ("dxp" "$\\pi$" nil)
   ("dxph" "$\\phi$" nil)
   ("dxps" "$\\psi$" nil)
   ("dxpyq" "$x^2 + y^2$" nil)
   ("dxr" "$\\rho$" nil)
   ("dxs" "$\\sigma$" nil)
   ("dxt" "$\\tau$" nil)
   ("dxth" "$\\theta$" nil)
   ("dxu" "$\\upsilon$" nil)
   ("dxve" "$\\varepsilon$" nil)
   ("dxvp" "$\\varpi$" nil)
   ("dxvph" "$\\varphi$" nil)
   ("dxvr" "$\\varrho$" nil)
   ("dxvs" "$\\varsigma$" nil)
   ("dxvth" "$\\vartheta$" nil)
   ("dxx" "$\\xi$" nil)
   ("dxyp" "$(x, y)$" nil)
   ("dxyzp" "$(x, y, z)$" nil)
   ("dxz" "$\\zeta$" nil)
   ("dy" "$y$" nil)
   ("dydt" "dy/dt" nil)
   ("dz" "$z$" nil)
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
   ("en" "\\operatorname{End}" nil)
   ("au" "\\operatorname{Aut}" nil)
   ("sy" "\\operatorname{Sym}" nil)
   ("nd" "\\operatorname{Ind}" nil)
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
   ("gma" "\\mathfrak{a}" dynexp-surround-with-dollars)
   ("gmas" "\\mathfrak{a}^{\\ast}" dynexp-surround-with-dollars)
   ("gmb" "\\mathfrak{b}" dynexp-surround-with-dollars)
   ("gmbs" "\\mathfrak{b}^{\\ast}" dynexp-surround-with-dollars)
   ("gmc" "\\mathfrak{c}" dynexp-surround-with-dollars)
   ("gmca" "\\mathfrak{A}" dynexp-surround-with-dollars)
   ("gmcb" "\\mathfrak{B}" dynexp-surround-with-dollars)
   ("gmcc" "\\mathfrak{C}" dynexp-surround-with-dollars)
   ("gmcd" "\\mathfrak{D}" dynexp-surround-with-dollars)
   ("gmce" "\\mathfrak{E}" dynexp-surround-with-dollars)
   ("gmcf" "\\mathfrak{F}" dynexp-surround-with-dollars)
   ("gmcg" "\\mathfrak{G}" dynexp-surround-with-dollars)
   ("gmch" "\\mathfrak{H}" dynexp-surround-with-dollars)
   ("gmci" "\\mathfrak{I}" dynexp-surround-with-dollars)
   ("gmcj" "\\mathfrak{J}" dynexp-surround-with-dollars)
   ("gmck" "\\mathfrak{K}" dynexp-surround-with-dollars)
   ("gmcl" "\\mathfrak{L}" dynexp-surround-with-dollars)
   ("gmcm" "\\mathfrak{M}" dynexp-surround-with-dollars)
   ("gmcn" "\\mathfrak{N}" dynexp-surround-with-dollars)
   ("gmco" "\\mathfrak{O}" dynexp-surround-with-dollars)
   ("gmcp" "\\mathfrak{P}" dynexp-surround-with-dollars)
   ("gmcq" "\\mathfrak{Q}" dynexp-surround-with-dollars)
   ("gmcr" "\\mathfrak{R}" dynexp-surround-with-dollars)
   ("gmcs" "\\mathfrak{S}" dynexp-surround-with-dollars)
   ("gmct" "\\mathfrak{T}" dynexp-surround-with-dollars)
   ("gmcu" "\\mathfrak{U}" dynexp-surround-with-dollars)
   ("gmcv" "\\mathfrak{V}" dynexp-surround-with-dollars)
   ("gmcw" "\\mathfrak{W}" dynexp-surround-with-dollars)
   ("gmcx" "\\mathfrak{X}" dynexp-surround-with-dollars)
   ("gmcy" "\\mathfrak{Y}" dynexp-surround-with-dollars)
   ("gmcz" "\\mathfrak{Z}" dynexp-surround-with-dollars)
   ("gmd" "\\mathfrak{d}" dynexp-surround-with-dollars)
   ("gmds" "\\mathfrak{d}^{\\ast}" dynexp-surround-with-dollars)
   ("gme" "\\mathfrak{e}" dynexp-surround-with-dollars)
   ("gmes" "\\mathfrak{e}^{\\ast}" dynexp-surround-with-dollars)
   ("gmf" "\\mathfrak{f}" dynexp-surround-with-dollars)
   ("gmfs" "\\mathfrak{f}^{\\ast}" dynexp-surround-with-dollars)
   ("gmg" "\\mathfrak{g}" dynexp-surround-with-dollars)
   ("gmgs" "\\mathfrak{g}^{\\ast}" dynexp-surround-with-dollars)
   ("gmh" "\\mathfrak{h}" dynexp-surround-with-dollars)
   ("gmhs" "\\mathfrak{h}^{\\ast}" dynexp-surround-with-dollars)
   ("gmi" "\\mathfrak{i}" dynexp-surround-with-dollars)
   ("gmis" "\\mathfrak{i}^{\\ast}" dynexp-surround-with-dollars)
   ("gmj" "\\mathfrak{j}" dynexp-surround-with-dollars)
   ("gmjs" "\\mathfrak{j}^{\\ast}" dynexp-surround-with-dollars)
   ("gmk" "\\mathfrak{k}" dynexp-surround-with-dollars)
   ("gmks" "\\mathfrak{k}^{\\ast}" dynexp-surround-with-dollars)
   ("gml" "\\mathfrak{l}" dynexp-surround-with-dollars)
   ("gmls" "\\mathfrak{l}^{\\ast}" dynexp-surround-with-dollars)
   ("gmm" "\\mathfrak{m}" dynexp-surround-with-dollars)
   ("gmms" "\\mathfrak{m}^{\\ast}" dynexp-surround-with-dollars)
   ("gmn" "\\mathfrak{n}" dynexp-surround-with-dollars)
   ("gmns" "\\mathfrak{n}^{\\ast}" dynexp-surround-with-dollars)
   ("gmo" "\\mathfrak{o}" dynexp-surround-with-dollars)
   ("gmos" "\\mathfrak{o}^{\\ast}" dynexp-surround-with-dollars)
   ("gmp" "\\mathfrak{p}" dynexp-surround-with-dollars)
   ("gmps" "\\mathfrak{p}^{\\ast}" dynexp-surround-with-dollars)
   ("gmq" "\\mathfrak{q}" dynexp-surround-with-dollars)
   ("gmqs" "\\mathfrak{q}^{\\ast}" dynexp-surround-with-dollars)
   ("gmr" "\\mathfrak{r}" dynexp-surround-with-dollars)
   ("gmrs" "\\mathfrak{r}^{\\ast}" dynexp-surround-with-dollars)
   ("gms" "\\mathfrak{s}" dynexp-surround-with-dollars)
   ("gmso3" "\\mathfrak{so}(3)" nil)
   ("gmss" "\\mathfrak{s}^{\\ast}" dynexp-surround-with-dollars)
   ("gmt" "\\mathfrak{t}" dynexp-surround-with-dollars)
   ("gmts" "\\mathfrak{t}^{\\ast}" dynexp-surround-with-dollars)
   ("gmu" "\\mathfrak{u}" dynexp-surround-with-dollars)
   ("gmus" "\\mathfrak{u}^{\\ast}" dynexp-surround-with-dollars)
   ("gmv" "\\mathfrak{v}" dynexp-surround-with-dollars)
   ("gmvs" "\\mathfrak{v}^{\\ast}" dynexp-surround-with-dollars)
   ("gmw" "\\mathfrak{w}" dynexp-surround-with-dollars)
   ("gmws" "\\mathfrak{w}^{\\ast}" dynexp-surround-with-dollars)
   ("gmx" "\\mathfrak{x}" dynexp-surround-with-dollars)
   ("gmxs" "\\mathfrak{x}^{\\ast}" dynexp-surround-with-dollars)
   ("gmy" "\\mathfrak{y}" dynexp-surround-with-dollars)
   ("gmys" "\\mathfrak{y}^{\\ast}" dynexp-surround-with-dollars)
   ("gmz" "\\mathfrak{z}" dynexp-surround-with-dollars)
   ("gmzs" "\\mathfrak{z}^{\\ast}" dynexp-surround-with-dollars)
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
   ("ifni" "\\infty" dynexp-surround-with-dollars)
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
   ("infi" "\\infty" dynexp-surround-with-dollars)
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
   ("lucm" "_M" dynexp-delete-leading-space)
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
   ("opcc" "\\mathbb{C}" dynexp-surround-with-dollars)
   ("opccard" "\\operatorname{Card}" nil)
   ("opccorr" "\\operatorname{Corr}" nil)
   ("opcdiff" "\\operatorname{Diff}" nil)
   ("opcext" "\\operatorname{Ext}" nil)
   ("opcfcl" "\\operatorname{FL}" nil)
   ("opcgcl" "\\operatorname{GL}" nil)
   ("opchar" "\\operatorname{char}" nil)
   ("opchom" "\\operatorname{Hom}" nil)
   ("opci" "\\mathbb{I}" dynexp-surround-with-dollars)
   ("opcimu" "\\operatorname{Im}(<+++>)<++>" dynexp)
   ("opcimz" "\\operatorname{Im}(z)" nil)
   ("opcjac" "\\operatorname{Jac}" nil)
   ("opclie" "\\operatorname{Lie}" nil)
   ("opcnm" "\\operatorname{Nm}" nil)
   ("opcpcgcl" "\\operatorname{PGL}" nil)
   ("opcpic" "\\operatorname{Pic}" nil)
   ("opcproj" "\\operatorname{Proj}" nil)
   ("opcprym" "\\operatorname{Prym}" nil)
   ("opcr" "\\mathbb{R}" dynexp-surround-with-dollars)
   ("opcr1" "\\mathbb{R}^1" dynexp-surround-with-dollars)
   ("opcr2" "\\mathbb{R}^2" dynexp-surround-with-dollars)
   ("opcr3" "\\mathbb{R}^3" dynexp-surround-with-dollars)
   ("opcram" "\\operatorname{Ram}" nil)
   ("opcrank" "\\operatorname{Rank}" nil)
   ("opcres" "\\operatorname{Res}" nil)
   ("opcreu" "\\operatorname{Re}(<+++>)<++>" dynexp)
   ("opcrez" "\\operatorname{Re}(z)" nil)
   ("opcrm" "\\mathbb{R}^m" dynexp-surround-with-dollars)
   ("opcrn" "\\mathbb{R}^n" dynexp-surround-with-dollars)
   ("opcscl" "\\operatorname{SL}" nil)
   ("opcsco" "\\operatorname{SO}" nil)
   ("opcscp" "\\operatorname{SP}" nil)
   ("opcscu" "\\operatorname{SU}" nil)
   ("opcso3" "\\operatorname{SO(3)}" nil)
   ("opcsp" "\\operatorname{Sp}" nil)
   ("opcsym" "\\operatorname{Sym}" nil)
   ("opct" "\\mathbb{T}" dynexp-surround-with-dollars)
   ("opctr" "\\operatorname{Tr}" nil)
   ("opcurl" "\\operatorname{curl}" nil)
   ("opcz" "\\mathbb{Z}" dynexp-surround-with-dollars)
   ("opdcso3" "$\\operatorname{SO(3)}$" nil)
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
   ("opso3" "\\operatorname{so(3)}" dynexp-surround-with-dollars)
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
   ("ovstcpp" "\\overset{\\longrightarrow}{\\text{PP}}" dynexp-surround-with-dollars)
   ("ovstcpq" "\\overset{\\longrightarrow}{\\text{PQ}}" nil)
   ("ovsu" "\\overset{<+++>}<++>" dynexp)
   ("ovu" "\\vec{<+++>}<++>" dynexp)
   ("ovv" "\\vec{v}" dynexp-surround-with-dollars)
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
   ("pdzy" "\\partial z/\\partial y" dynexp-surround-with-dollars)
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
   ("rpl" "\\mathbb{R}_+" dynexp-surround-with-dollars)
   ("rplt" "\\mathbb{R}_+^times" dynexp-surround-with-dollars)
   ("rrd" "\\right\\rangle \\! \\right\\rangle" nil)
   ("rrt" "\\right\\rangle \\! \\right\\rangle \\! \\right\\rangle" nil)
   ("rsa" "\\rightsquigarrow" nil)
   ("lrsa" "\\leftrightsquigarrow" nil)
   ("rtgu" "\\raisetag{<+++>}<++>" dynexp)
   ("rti" "\\rtimes" nil)
   ("rve" "\\right\\rvert" nil)
   ("scc" "\\succ" nil)
   ("scl" "\\ell" dynexp-surround-with-dollars)
   ("dscl" "$\\ell$" nil)
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
   ("tsq" "T^\\ast Q" dynexp-surround-with-dollars)
   ("tsqq" "T^{\\ast}_{q} Q" dynexp-surround-with-dollars)
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
   ("ula" "\\underline{a}" dynexp-surround-with-dollars)
   ("ulca" "\\underline{A}" dynexp-surround-with-dollars)
   ("dula" "$\\underline{a}$" nil)
   ("dulca" "$\\underline{A}$" nil)
   ("ulb" "\\underline{b}" dynexp-surround-with-dollars)
   ("ulcb" "\\underline{B}" dynexp-surround-with-dollars)
   ("dulb" "$\\underline{b}$" nil)
   ("dulcb" "$\\underline{B}$" nil)
   ("ulc" "\\underline{c}" dynexp-surround-with-dollars)
   ("ulcc" "\\underline{C}" dynexp-surround-with-dollars)
   ("dulc" "$\\underline{c}$" nil)
   ("dulcc" "$\\underline{C}$" nil)
   ("uld" "\\underline{d}" dynexp-surround-with-dollars)
   ("ulcd" "\\underline{D}" dynexp-surround-with-dollars)
   ("duld" "$\\underline{d}$" nil)
   ("dulcd" "$\\underline{D}$" nil)
   ("ule" "\\underline{e}" dynexp-surround-with-dollars)
   ("ulce" "\\underline{E}" dynexp-surround-with-dollars)
   ("dule" "$\\underline{e}$" nil)
   ("dulce" "$\\underline{E}$" nil)
   ("ulf" "\\underline{f}" dynexp-surround-with-dollars)
   ("ulcf" "\\underline{F}" dynexp-surround-with-dollars)
   ("dulf" "$\\underline{f}$" nil)
   ("dulcf" "$\\underline{F}$" nil)
   ("ulg" "\\underline{g}" dynexp-surround-with-dollars)
   ("ulcg" "\\underline{G}" dynexp-surround-with-dollars)
   ("dulg" "$\\underline{g}$" nil)
   ("dulcg" "$\\underline{G}$" nil)
   ("ulh" "\\underline{h}" dynexp-surround-with-dollars)
   ("ulch" "\\underline{H}" dynexp-surround-with-dollars)
   ("dulh" "$\\underline{h}$" nil)
   ("dulch" "$\\underline{H}$" nil)
   ("uli" "\\underline{i}" dynexp-surround-with-dollars)
   ("ulci" "\\underline{I}" dynexp-surround-with-dollars)
   ("duli" "$\\underline{i}$" nil)
   ("dulci" "$\\underline{I}$" nil)
   ("ulj" "\\underline{j}" dynexp-surround-with-dollars)
   ("ulcj" "\\underline{J}" dynexp-surround-with-dollars)
   ("dulj" "$\\underline{j}$" nil)
   ("dulcj" "$\\underline{J}$" nil)
   ("ulk" "\\underline{k}" dynexp-surround-with-dollars)
   ("ulck" "\\underline{K}" dynexp-surround-with-dollars)
   ("dulk" "$\\underline{k}$" nil)
   ("dulck" "$\\underline{K}$" nil)
   ("ull" "\\underline{l}" dynexp-surround-with-dollars)
   ("ulcl" "\\underline{L}" dynexp-surround-with-dollars)
   ("dull" "$\\underline{l}$" nil)
   ("dulcl" "$\\underline{L}$" nil)
   ("ulm" "\\underline{m}" dynexp-surround-with-dollars)
   ("ulcm" "\\underline{M}" dynexp-surround-with-dollars)
   ("dulm" "$\\underline{m}$" nil)
   ("dulcm" "$\\underline{M}$" nil)
   ("uln" "\\underline{n}" dynexp-surround-with-dollars)
   ("ulcn" "\\underline{N}" dynexp-surround-with-dollars)
   ("duln" "$\\underline{n}$" nil)
   ("dulcn" "$\\underline{N}$" nil)
   ("ulo" "\\underline{o}" dynexp-surround-with-dollars)
   ("ulco" "\\underline{O}" dynexp-surround-with-dollars)
   ("dulo" "$\\underline{o}$" nil)
   ("dulco" "$\\underline{O}$" nil)
   ("ulp" "\\underline{p}" dynexp-surround-with-dollars)
   ("ulcp" "\\underline{P}" dynexp-surround-with-dollars)
   ("dulp" "$\\underline{p}$" nil)
   ("dulcp" "$\\underline{P}$" nil)
   ("ulq" "\\underline{q}" dynexp-surround-with-dollars)
   ("ulcq" "\\underline{Q}" dynexp-surround-with-dollars)
   ("dulq" "$\\underline{q}$" nil)
   ("dulcq" "$\\underline{Q}$" nil)
   ("ulr" "\\underline{r}" dynexp-surround-with-dollars)
   ("ulcr" "\\underline{R}" dynexp-surround-with-dollars)
   ("dulr" "$\\underline{r}$" nil)
   ("dulcr" "$\\underline{R}$" nil)
   ("uls" "\\underline{s}" dynexp-surround-with-dollars)
   ("ulcs" "\\underline{S}" dynexp-surround-with-dollars)
   ("duls" "$\\underline{s}$" nil)
   ("dulcs" "$\\underline{S}$" nil)
   ("ult" "\\underline{t}" dynexp-surround-with-dollars)
   ("ulct" "\\underline{T}" dynexp-surround-with-dollars)
   ("dult" "$\\underline{t}$" nil)
   ("dulct" "$\\underline{T}$" nil)
   ("uluu" "\\underline{u}" nil)
   ("ulcu" "\\underline{U}" dynexp-surround-with-dollars)
   ("dulu" "$\\underline{u}$" nil)
   ("dulcu" "$\\underline{U}$" nil)
   ("ulv" "\\underline{v}" dynexp-surround-with-dollars)
   ("ulcv" "\\underline{V}" dynexp-surround-with-dollars)
   ("dulv" "$\\underline{v}$" nil)
   ("dulcv" "$\\underline{V}$" nil)
   ("ulx" "\\underline{x}" dynexp-surround-with-dollars)
   ("ulcx" "\\underline{X}" dynexp-surround-with-dollars)
   ("dulx" "$\\underline{x}$" nil)
   ("dulcx" "$\\underline{X}$" nil)
   ("ulw" "\\underline{w}" dynexp-surround-with-dollars)
   ("ulcw" "\\underline{W}" dynexp-surround-with-dollars)
   ("dulw" "$\\underline{w}$" nil)
   ("dulcw" "$\\underline{W}$" nil)
   ("uly" "\\underline{y}" dynexp-surround-with-dollars)
   ("ulcy" "\\underline{Y}" dynexp-surround-with-dollars)
   ("duly" "$\\underline{y}$" nil)
   ("dulcy" "$\\underline{Y}$" nil)
   ("ulz" "\\underline{z}" dynexp-surround-with-dollars)
   ("ulcz" "\\underline{Z}" dynexp-surround-with-dollars)
   ("dulz" "$\\underline{z}$" nil)
   ("dulcz" "$\\underline{Z}$" nil)
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
   ("xa" "\\alpha" dynexp-surround-with-dollars)
   ("xb" "\\beta" dynexp-surround-with-dollars)
   ("xc" "\\chi" dynexp-surround-with-dollars)
   ("xcd" "\\Delta" dynexp-surround-with-dollars)
   ("xcg" "\\Gamma" dynexp-surround-with-dollars)
   ("xcl" "\\Lambda" dynexp-surround-with-dollars)
   ("xco" "\\Omega" dynexp-surround-with-dollars)
   ("xcp" "\\Pi" dynexp-surround-with-dollars)
   ("xcph" "\\Phi" dynexp-surround-with-dollars)
   ("xcps" "\\Psi" dynexp-surround-with-dollars)
   ("xcs" "\\Sigma" dynexp-surround-with-dollars)
   ("xcth" "\\Theta" dynexp-surround-with-dollars)
   ("xcu" "\\Upsilon" dynexp-surround-with-dollars)
   ("xcx" "\\Xi" dynexp-surround-with-dollars)
   ("xd" "\\delta" dynexp-surround-with-dollars)
   ("xdra" "\\xdashrightarrow{<+++>}<++>" dynexp)
   ("xe" "\\eps" dynexp-surround-with-dollars)
   ("xet" "\\eta" dynexp-surround-with-dollars)
   ("xg" "\\gamma" dynexp-surround-with-dollars)
   ("xio" "\\iota" dynexp-surround-with-dollars)
   ("xk" "\\kappa" dynexp-surround-with-dollars)
   ("xl" "\\lambda" dynexp-surround-with-dollars)
   ("xla" "\\xleftarrow{<+++>}<++>" dynexp)
   ("xln" "x_n" nil)
   ("xm" "\\mu" dynexp-surround-with-dollars)
   ("xn" "\\nu" dynexp-surround-with-dollars)
   ("xo" "\\omega" dynexp-surround-with-dollars)
   ("xp" "\\pi" dynexp-surround-with-dollars)
   ("xph" "\\phi" dynexp-surround-with-dollars)
   ("xps" "\\psi" dynexp-surround-with-dollars)
   ("xpyq" "x^2 + y^2" dynexp-surround-with-dollars)
   ("xq" "x^2" nil)
   ("xr" "\\rho" dynexp-surround-with-dollars)
   ("xra" "\\xrightarrow{<+++>}<++>" dynexp)
   ("xs" "\\sigma" dynexp-surround-with-dollars)
   ("xt" "\\tau" dynexp-surround-with-dollars)
   ("xth" "\\theta" dynexp-surround-with-dollars)
   ("xu" "\\upsilon" dynexp-surround-with-dollars)
   ("xve" "\\varepsilon" dynexp-surround-with-dollars)
   ("xvp" "\\varpi" dynexp-surround-with-dollars)
   ("xvph" "\\varphi" dynexp-surround-with-dollars)
   ("xvr" "\\varrho" dynexp-surround-with-dollars)
   ("xvs" "\\varsigma" dynexp-surround-with-dollars)
   ("xvth" "\\vartheta" dynexp-surround-with-dollars)
   ("xx" "\\xi" nil)
   ("xyp" "(x, y)" dynexp-delete-leading-space)
   ("xyzp" "(x, y, z)" dynexp-delete-leading-space)
   ("xz" "\\zeta" dynexp-surround-with-dollars)
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
