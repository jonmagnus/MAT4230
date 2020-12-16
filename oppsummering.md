---
author: Jon-Magnus
title: MAT4230 -- Oppsummering
geometry:
- margin=1in
header-includes: |
    \usepackage{todonotes}
    \usepackage{tikz-cd}
    \usepackage{amsthm}
    \newtheorem{theorem}{Teorem}
    \newtheorem{lemma}{Lemma}
    \newtheorem{proposition}{Proposisjon}
    \newtheorem{corollary}{Korollar}
    \renewcommand{\proofname}{Bevis}
    \newcommand{\Pic}{\textrm{Pic}}
    \renewcommand{\O}{\mathcal O}
    \newcommand{\R}{\mathbb R}
    \newcommand{\Z}{\mathbb Z}
    \newcommand{\F}{\mathbb F}
    \renewcommand{\P}{\mathbb P}
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
Noethers formel forteller oss om sammenhengen mellom algebraisk eulerkarakteristikk og topologisk
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
En birasjonal avbildning er en isomorfi mellom to åpne underrom av varietetene den avbilder imellom,
og muligens udefinert utenfor.
For flater dekomponeres avbildninger gjennom serier med oppblåsninger og nedblåsninger.

\begin{lemma}
Om en divisor $C$ går igjennom oppblåsningspunktet $p$ med multiplisitet vil pullback av
divisoren i oppblåsningen bli $\epsilon^ * C = \tilde C + mE$ hvor $\tilde C$ er
den strikte transformen og $E$ den eksepsjonelle divisoren.
\end{lemma}
\todo{Add proof: analytic}

\begin{lemma}
La $\epsilon \colon \tilde S\to S$ være en oppbåsning.
Da har vi
\begin{enumerate}
\item
    Vi har en isomorfi $\Pic S\oplus \Z\to \Pic \tilde S$ gitt ved $(D,n)\mapsto \epsilon^*D + nE$.
\item
    $(\epsilon^*D).(\epsilon^*D^\prime)=D.D'^\prime$
\item
    $K_{\tilde S}=\epsilon^*K_S + E$.
\end{enumerate}
\end{lemma}

\begin{proof}
\begin{enumerate}
\item
    Den er tydelig surjektiv siden $\epsilon$ er en isomorfi utenfor $p$.
    Ved snittallet kan vi se at kjernen også er null.
\item
    Om vi velger to lineært ekvivalente divisorer som går utenom $p$ blir resultatet åpenbart.
\item
    Bruker genusformelen. \todo{Undersøk dette nærmere}
\end{enumerate}
\end{proof}

\begin{theorem}[Eliminasjon av ubestemmelser]
\label{thm:elimination-of-indeterminancy}
Om vi har en rasjonal avbildning $\phi\colon S\dashrightarrow X$
fra en glatt flate til en projektiv varietet, kan vi blåse opp $S$
endelig mange ganger til flate $\eta\colon S^\prime\to S$ slik at vi får en morfi
$f\colon S^\prime\to X$ og $\phi\eta=f$.
\end{theorem}

\begin{proof}
Vi kan erstatte $X$ med det minste projektive rommet som ínneholder $X$.
Deretter kan vi identifisere avbildnignen med et lineært system.
Om systemet har basispunkter blåser vi opp det punktet, og om vi
ikke har flere basispunkter har vi en morfi.
Om vi passer på å fjerne den eksepsjonelle divisoren i hvert steg vil ikke systemene ha
noen fiks komponent, så sekvensen vil til slutt terminere når vi ikke lenger har basispunkter.
\end{proof}

\begin{proposition}[Universalegenskapen ved oppbåsninger]
Om vi har en birational morfi $f\colon X\to S$ slik at inversavbildningen er
udefinert i et punkt $p\in S$ faktoriseres $f$ gjennom
en oppblåsning $\epsilon\colon\tilde S\to S$
$$
f=\epsilon g\colon X\to \tilde S\to S
$$
\end{proposition}

\begin{theorem}
La $f\colon S\to S_0$ være en birasjonal morfi av flater.
Da kan vi gjøre en serie oppblåsninger slik at vi vår en isomorfi
$u\colon S\to S_n$ og $f=(\prod \epsilon_i)u$.
\end{theorem}
\begin{proof}
Vi gjør induksjon hvor induksjonssteget følger fra universalegenskapen til oppblåsningen.
At sekvensen terminerer følger av at en birasjonal morfi av flater alltid kontakterer
endelig mange irredusible kurver og oppblåsningen kontakterer bare den eksepsjonelle divisoren.
\end{proof}

\begin{corollary}
En birasjonal avbildning mellom flater kan skrives som en serie oppblåsninger og nedblåsninger.
\end{corollary}
\begin{proof}
Dette følger umiddelbart fra forrige teorem og teorem \ref{thm:elimination-of-indeterminancy}.
\end{proof}

\begin{theorem}[Castelnuovos kontraksjonskriterium]
En kurve $E\subset S$ er eksepsjonell hvis og bare hvis $E^2=-1$ og $E\simeq \P^1$.
\end{theorem}
\begin{proof}
Tanken er å finne et hyperplansnitt på $S$ slik at vi kan embedde flaten likt i projektivt rom
utenfor kurven og slik at kurven kontrakteres til et punkt.
\todo{Undersøk dette lange bviset}
\end{proof}

# Kapittel 3 -- Regerte flater
En kurve er reglert om den er birasjonal til $C\times\P^1$ for en glatt kurve $C$.
$P^1\times\P^1$ er birasjonal til $P^2$, så om $C=\P^1$ er flaten rasjonal.

En geometrisk reglert flate er en flate med en glatt $\P^1$-reglering over en glatt kurve $C$.

\begin{theorem}[Noether-Enriques]
\label{thm:noether-enriques}
La $p\colon S\to C$ være en morfi fra en flate til en glatt kurve.
Om det finnes et $\P^1$-fiber hvor $p$ er glatt kan vi lage et omegn $U\subset C$ og
en isomorfi $p^{-1}(U)\simeq U\times \P^1$. Spesielt er da flaten reglert.
\end{theorem}
\begin{proof}
\todo{fullfør bevis}
\end{proof}

\begin{lemma}
De geometrisk reglerte flatene over over en irrasjonal kurve er minimale.
\end{lemma}
\begin{proof}
Anta for motsigelse at det finnes en kurve $E\simeq \P^1$.
Siden den har negativt selvsnitt, spesielt ikke-null, kan den ikke være et fiber,
så $p(E)=C$, men dette gir oss at $C$ er rasjonal, en motsigelse.
\end{proof}

\begin{theorem}
La $C$ være en glatt irrasjonal kurve.
De minimale modellene for $C\times \P^1$ er de geometriske 
reglerte over $C$, altså de projektive buntene $\P_C(E)$ for divisorer $E$.
\end{theorem}
\begin{proof}
Det gjenstår å vise at minimale modeller er isomorfe til en geometrisk reglert flate.
La $S$ være en reglert flate over $C$ slik at vi har en birasjonal avbildning
$\phi\colon S\dashrightarrow C\times \P^1$.
Videre har vi en projeksjon $p\colon C\times \P^1\to C$
som gir opphav til en rasjonal avbildning $p\phi\colon S\dashrightarrow C$.

Vi kan utvide denne avbildningen til en morfi fra en oppblåsning av $S$ ned på $C$.
Siden $C$ ikke er rasjonal må de eksepsjonelle divisorene kontrakteres til punkter på $C$,
men om de eksepsjonelle divisorene kontrakteres til punkter på $C$ hadde vi utgangspunktet ingen
grunn til å blåse opp, så $p\phi$ er en morfi og $S$ var geometrisk reglert til å begynne med.
\end{proof}

\begin{theorem}[Riemann-Roch for vektorbunter av rang 2]
$$\chi (E) = \deg (E) + 2 - 2g(C)$$
\end{theorem}
\todo{}

## Projektive bunter
\begin{proposition}
La $p\colon \P_C(E)=S\to C$ være en geometrisk reglert flate,
og la $h\in \Pic S$ være divisorklassen til $\O_S(1)$.
\begin{enumerate}
\item
    $\Pic S = p^*\Pic C\oplus \Z h$.
\item
    $H^2(S,\Z) =\Z h\oplus \Z f$, hvor $f$ er divisorklassen til en fiber.
\item
    $h^2=\deg(E)$.
\item
    $[K] = -2h + (\deg(E) + 2g(C) - 2)f$ i $H^2(S, \Z)$.
\end{enumerate}
\end{proposition}

\begin{proof}
\begin{enumerate}
\item
    $F.h=1$ for alle fibre $F$,
    så alle divisorer kan skrives på formen $D + mh$ slik at $D.F = 0$.

    La $D_n=D + nF$.
    Det følger at
    \begin{itemize}
    \item $D_n^2 = D^2$
    \item $D_n.K = D.K - 2n$
    \item $h^0(K - D_n)=0$ for tilstrekkelige store $n$.
    \end{itemize}
    Det følger at $|D_n|$ er ikketom for tilstrekkelig store $n$,
    og for $E\in|D_n|$ snitter det ingen fibre,
    så hver komponent må være et fiber
    og $E$ pulback av en divisor på $C$.
\item
    \todo{Vurder å gjennomføre bevis for de andre punktene}
\end{enumerate}
\end{proof}

## Numeriske invarianter
Vi betegner plurigeneraene til en flate $S$ ved
$$
P_n(S) = h^0(S, \O_S(nK))
$$
for $n\geq 1$ og irregulariteten 
$$
q(S) = h^1(S,\O_S)
$$.

Spesielt har vi ved Serre-dualitet $p_g(S) = P_1(S)=h^2(S,\O_S)$.
Hodge-teori forteller oss også at $q(S) = h^0(S,\Omega_S^1) = \frac 1 2 b_1(S)$,
hvor $b_i$ betegner betti-tallene.
Ved Poincaré-dualitet får vi $b_0 = b_4 = 1$ og $b_1 = b_3$,
så topologisk eulerkarakteristikk blir $\chi _ {\textrm{top}}(S) = 2 - 2b_1 + b_2$.

\begin{proposition}
$q$ og $P_n(S)$ er numeriske invarianter.
\end{proposition}

\begin{proposition}
For reglerte flater $S$ over $C$ har vi
\begin{itemize}
\item $q(S) = g(C)$
\item $P_n(S) = 0$
\end{itemize}
Hvis $S$ er geometrisk reglert har vi $K^2_S = 8(1 - g(C))$ og $b_2(S) = 2$.
\end{proposition}
\begin{proof}
Siden plurigenera og irrasjonalitet er birasjonale invarianter kan vi anta at $S = C\times \P_1$.
Plurigenera for flaten blir produktet av plurigeneraene til faktorene i produktet,
så siden $P_n(\P^1)=0$ gjelder det samme for flaten.
Irrasjonalitet blir summen av genusene, så tilsvarende får vi $q(S) = g(C)$.
\end{proof}

# Kapittel 4 -- Rasjonale flater
\begin{lemma}
En projeksjon er en morfi hvis og bare hvis linjene gjennom punktet snitter flaten
i ett punkt talt med multiplisitet.
\end{lemma}

\begin{proposition}
Alle flater er isomorfe til en glatt flate i $\P^5$.
\end{proposition}
\begin{proof}
Vi kan vise at rommet utspent av alle bisekanter er en undervarietet av dimensjon mindre enn $5$.
Resultatet følger umiddelbart fra lemmaet over.
\end{proof}

\begin{theorem}
\label{thm:4-13}
Alle tredjegradsflater i $\P^3$ er oppblåsningen av $P^2$ i $6$ punkter.
\end{theorem}

# Kapittel 5 -- Castelnuovo
\begin{theorem}[Castelnuovos rasjonalitetskriterium]
$S$ er rasjonal om $q = P_2 = 0$. En følgelig og tilstrekkelig erstatning for kriteriet $P_2=0$ er $g=0$.
\end{theorem}

En flate er rasjonal om det finnes en dominant rasjonal avbildning fra et projektivt rom ned på flaten.
En flate er rasjonal om det finnes en birasjonal avbildning mellom flaten og et projektivt rom.

\begin{corollary}[Castelnuovos teorem]
Enhver unirasjonal flate er rasjonal.
\end{corollary}
\begin{proof}
Vi kan blåse opp for unirasjonale avbildning til en morfi.
Siden plurigenera og irrasjonalitet er birasjonale invarianter,
får vi $P_2 = q = 0$, så flaten er rasjonal.
\end{proof}

\begin{theorem}
En minimal rasjonal flate er isomorf med en av de geometrisk reglerte flatene over $\P^1$ $\F_n$.
\end{theorem}

\todo {Albanesen}
\todo {Stein-faktorisering}

# Kapittel 6

# Kapittel 7 -- Kodaira dimensjon
Vi definerer kodaira-dimensjonen til en projektiv varietet med kanonisk divisor $K$
som den største dimensjonen $\phi _ {nK}(V)$ kan ha for $n\geq 1$,
hvor $\phi _ {nK}$ betegner avbildnignen definert av det lineære systemet $|nK|$.
Det følger automatisk at kodaira-dimensjonen til en flate aldri er større enn $2$.

Vi sier den tomme mengden har dimensjon $-\infty$.
$$\begin{aligned}
\kappa(S)=-\infty
&\Leftrightarrow
P_n=0\,\forall n\geq 0\\
&\Leftrightarrow
\textrm{S er reglert}
\end{aligned}
$$

# Kapittel 8 -- Kodaira dimensjon null
# Kapittel 9 -- Elliptiske flater

En flate $S$ er elliptisk dersom det finnes en projeksjon
$p\colon S\to B$ for en glatt kurve $B$ slik at den generiske fiberen er en elliptisk kurve.

# Kapittel 10 -- Generell type

# Temaer
## Snitt-produkt og RR for flater
Se kapittel 1.

## Lineære systemer for kjeglesnitt i planet
Det lineære systemet av kvadrikker i $\P^2$ korresponderer til Veronese-avbildningen av grad $2$ inn i $\P^5$.

## En glatt tredjegradsflate er $P^2$ blåst opp i $6$ punkter

Teorem \ref{thm:4-13} forteller oss at alle glatte tredjegradsflater $S\subset \P^3$ er oppblåsninger av $\P^2$ i $6$ punkter.
Beviset for denne påstanden bygger på følgende lemmaer

\begin{lemma}
$S$ inneholder en linje.
\end{lemma}

\begin{lemma}
La $l\subset S$ være en linja.
Da finnes det $10$ andre linjer på $S$ som krysser $l$,
og de kan pares i $5$ par slik at linjene i paret ikke snitter.
\end{lemma}

\begin{proof}[Bevis av teorem \ref{thm:4-13}]
La $l,l^\prime\subset S$ være to disjunkte linjer.
Vi kan definere en rasjonal avbildning $l\times l^\prime \dashrightarrow S$
ved å sende $(p, p^\prime)$ på punktet $q\in \langle p, p^\prime \rangle \cap S$
forskjellig fra $p, p^\prime$.

Tilsvarende kan vi definere en rasjonal avbildning $\psi\colon S\dashrightarrow l\times l^\prime$
ved å sende $s\in S\setminus l\setminus l^\prime$ på $(p, p^\prime)$
hvor $p=l\cap\langle s,l^\prime\rangle$
og $p^\prime=l^\prime\cap\langle s, l\rangle$.
\end{proof}


## Reglerte flater: Picard gruppe, RR og numeriske invarianter
## Snitt-produktet på sammenhengende kurver som blir kontraktert ved en morfi
## Minimale flater, eksistens og entydighet
## K3-flater: RR og projektive modeler av grad mindre enn $10$
## Elliptiske flater
