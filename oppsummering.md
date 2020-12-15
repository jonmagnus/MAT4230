---
author: Jon-Magnus
title: MAT4230 -- Oppsummering
geometry:
- margin=1in
header-includes: |
    \usepackage{todonotes}
    \usepackage{tikz-cd}
    \usepackage{amsthm}
    \newtheorem{theorem}{Theorem}
    \newcommand{\Pic}{\textrm{Pic}}
    \renewcommand{\O}{\mathcal O}
    \newcommand{\R}{\mathbb R}
...

\tableofcontents

# Kapittel 1

## Picard-gruppen 
La $S$ være en glatt varietet.
Picard-gruppen $\Pic S$ betegner gruppen av isomorfiklasser av invertible knipper på $S$.
Effektive divisorer gir oss invertible knipper.
Vi kan også trekke tilbake knipper gitt en morfi $f\colon S\to X$,
som gir oss en morfi $f^ * \colon \Pic X\to\Pic S$ for glatte skjemaer $X$.
Om $f$ er surjektiv kan vi også trekke tilbake divisorer, på en måte som er
kompatibel med korrespondansen av invertible knipper og divisorer,
altså $f^ * \O_X(D) = \O_S(f^ * D)$.

## Riemann-Roch 
\begin{theorem}[Riemann-Roch for flater]
La $L\in \Pic S$.
$$\chi (L) = \chi (\O_S) + \frac 1 2 (L^2 - L.\omega_s)$$.
\end{theorem}
\begin{proof}
Ved definisjon av snittproduktet får vi 
$$(L^{-1}.L\otimes \omega_s^{-1})=\chi(\O_S) - \chi(L) - \chi (\omega_s\otimes L^{-1}) + \chi(\omega_s)
$$
Med mer fornuftig notasjon ville vi skrevet $L^{-1}=-L$ og
$L\otimes\omega_s^{-1}=L - \omega_s$.
Ved Serre-dualitet får vi $\chi(L^\prime)=\chi(\omega_s - L^\prime)$,
som gir oss
$$((-L).(L - \omega_s) = 2(\chi(\O_S) - \chi(L))$$
Ved bilinearitet kan vi skrive om til uttrykket i påstanden.
\end{proof}


## Noethers formel
Noethers formel fortelleross om sammenhengen mellom algebraisk eulerkarakteristikk og topologisk
eulerkarakteristikk, hvor førstnevnte er definert som den alternerende summen av dimensjonen
til de globale seksjonene av det spesifikke knippet, mens sistnevnte er definert som den alternerende summen
av betti-tallene, altså den alternerende summen den reelle dimensjonen til de globale seksjonene til
det konstante knippet med verdier i $\mathbb R$.
\begin{theorem}[Noethers formel]
$$\chi (\O_S) = \frac 1 {12} (K_S^2 + \chi _ {\mathrm{top}}(S))$$
hvor $\chi _ {\mathrm{top}}(S) = \sum (-1)^i b_i$ og
$b_i=\dim _ \R H^i(S,\R)$.
\end{theorem}

## Genusformelen
\begin{theorem}[Genusformelen]
For en irredusibel kurve $C$ har vi $g(c):=h^1(C,\O_C)=1 + \frac 1 2 (C^2 + C.K)$.
\end{theorem}
\begin{proof}
Vi har følgende eksakte sekvens
$$\begin{tikzcd}
0\rar
&\O_S(-C)\rar
&\O_S\rar
&\O_C\rar
&0
\end{tikzcd}$$
som ved linearitet av eulerkarakteristikken gir oss
$\chi (O_C):= 1 - g(C) = \chi(O_S) - \chi(O_S(-C))$.
Omformulerer vi Riemann-Roch står vi igjen med
$$\begin{aligned}
\chi(\O_S) - \chi(\O_S(-C))
&:=-(\chi(C) - \chi(O_S))\\
&=-\frac 1 2 (C^2 + C.K)
\end{aligned}
$$
\end{proof}

# Kapittel 2 -- Birationale avbildninger


# Kapittel 3 -- Regerte flater
# Kapittel 4 -- Rasjonale flater
# Kapittel 5 -- Castelnuovo
# Kapittel 6
# Kapittel 7 -- Kodaira dimensjon
# Kapittel 8 -- Kodaira dimensjon null
# Kapittel 9 -- Elliptiske flater
# Kapittel 10 -- Generell type

# Temaer
## Snitt-produkt og RR for flater
## Lineære systemer for kjeglesnitt i planet
## En glatt tredjegradsflate er $P^2$ blåst opp i $6$ punkter
## Reglerte flater: Picard gruppe, RR og numeriske invarianter
## Snitt-produktet på sammenhengende kurver som blir kontraktert ved en morfi
## Minimale flater, eksistens og entydighet
## K3-flater: RR og projektive modeler av grad mindre enn $10$
## Elliptiske flater
