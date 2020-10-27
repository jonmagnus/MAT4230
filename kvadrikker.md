---
title: Lineære systemer av kvadrikker i $\mathbb P^2$
author: Jon-Magnus Rosenblad
geometry:
    - margin=1in
header-includes: |
    \usepackage{tikz-cd}
    \usepackage{todonotes}
    \usepackage{amsthm}
    \newcommand{\Pic}{\mathrm{Pic}\,}
    \renewcommand{\P}{\mathbb P}
    \newcommand{\F}{\mathbb F}
    \newtheorem{proposition}{Proposisjon}
    \newtheorem{remark}{Bemerkning}
    \newtheorem{lemma}{Lemma}
    \renewcommand*{\proofname}{Bevis}
...

# Veronese

Kvadrikkene i $\P^2$ beskrives som nullpunktmengden til polynomer på formen
$ax^2 + by^2 + cz^2 + dyz + e xz + f yz$
parametrisert med koeffisienter $[a,\ldots,f]\in\P^5$.
Gitt et punkt $[x,y,z]\in\P^2$ avbilder vi det gjennom Veronese-avbildningen
$\P^2\to\P^5$.
Gitt dette punktet i $\P^5$ er det en linear begrensning at koeffisientene sender punktet til $0$,
så det finnes et hyperplan av koeffisienter som sender punktet på $0$.
Dette hyperplanet korresponderer til kvadrikkene gjennom det opprinnelige punktet i $\P^2$.
Vi definerer dette hyperplanet i dualrommet $\check{\P^5}$ som bildet av punktet $[x,y,z]\in\P^2$.

\begin{proposition}
Det lineære systemet av kvadrikker i $\P^2$ definerer Veronese-embeddingen $j\colon\P^2\to\P^5$ av grad $d=2$.
Bildet av $j$ danner en flate $V\subset\P^5$ av grad $H^2=d^2=4$ hvor $H$ er et hyperplan i $\P^5$.
\end{proposition}

Ved en enkel observasjon ser vi at flaten $V$ ikke inneholder noen linjer $C$
siden $C\,\textrm{linje}\Rightarrow C\cdot H =C\cdot 2L=1$.

# Generisk projeksjon

\begin{proposition}
Projiseringen vekk fra et generisk punkt i $\P^5$ avbilder $V$ isomorft på sitt bilde $V^\prime\subset\P^4$.
\end{proposition}

\begin{proof}
Vi konstruerer rommet av plan som inneholder kvadrikkene på flaten.
Dette er et rom av dimensjon $\leq 4$ ettersom det en et underrom av en $\P^2$-fibrasjon over rommet av linjer
i $\P^2$, som er $\P^2$.
Alle bisekanter gjennom flaten vil være inneholdt i et av disse planene.
Siden rommet har dimensjon $\leq 4$ kan vi velge et generisk punkt utenfor rommet slik at det ikke ligger på noen bisekant.
Dermed vil projiseringen vekk fra punktet være injektiv på bildet.
\end{proof}

\begin{remark}
Den generiske projeksjonen av $V^\prime$ ned i $\P^3$ definerer en $4$-grads flate
med tre dobbel-linjer som møtes i et trippel-punkt.\todo{Bevis dette}
Denne flaten er kjent som Steiner-flaten, eller Steiners Romerske flate.
\end{remark}

# Det lineære systemet gjennom et punkt

Ser vi heller på alle kvadrikker gjennom et punkt får vi et lineært system
med et åpenbart basispunkt.
Dette tilsvarer å projiserer $V$ fra et punkt $p\in V$.
Om vi blåser opp avbildningen får vi det lineære systemet av kvadrikker gjennom punktet
$|2h - E|$ beskrevet ved generatorene vi er best kjent med,
eller $|h + f|$ beskrevet ved generatorene for $\F_1=\P(\mathcal O _ {\P^1} \oplus \mathcal O _ {\P^1}(1))$
slik det står i Bouville.
Her er $h$ den pullbacken av en linje i $\P^2$, $E$ den eksepsjonelle divisoren og $f$ et fiber i fibreringen $\F_1\to\P^1$.
Likheten av de to representasjonene følger av $E=h - f$.

\begin{remark}
Picardgruppen $\Pic F_n$ til de geometrisk reglerte flatene er generert av $h$ og $f$,
hvor $hf=1$, $h^2=n$ og $f^2=0$.
\end{remark}

Vi benevner flaten i bildet $S$.
Vi får at graden til $S$ blir $H^2=(2h - E)^2 = d^2 - 1$.

\begin{proposition}
De eneste linjene på $S$ er $f$ og $E$.
\end{proposition}
\begin{proof}
Vi ser at $fH=f(f + h)=1$, så fibrene avbilder på linjer på flaten.
Vi har også $EH=(h - f)(f + h)=2 - 1=1$, så den eksepsjonelle divisoren avbilder også på en linje.
Generelt, anta vi har en linje $C=ah + bf$ for $a,b\geq e$.
Da har vi $C(h + f)=2a + b$, så $a=0$ og $b = 1$, som gir oss fiberet.
\end{proof}

# Generell projeksjon av $S$

\begin{lemma}
$S$ er snittet av et todimensjonalt lineært system av kvadrikker i $\P^4$.
For enhver pensel av kvadrikker $\{aQ_1 + bQ_2\}$ som inneholder $S$

\begin{enumerate}
\item
vil snittet $Q_1\cap Q_2=S\cup P$, hvor $P$ er et plan i $\P^4$, og 
\item
$S\cap P$ er et kjeglesnitt.
\end{enumerate}

\end{lemma}
\begin{proof}
Kvadrikkene snitter $S$ i de strikte transformene av kvartrikkene i $\P^2$ som går igjennom $0$ med multiplisitet $2$. \todo{Hvorfor det?}
Å snitte et punkt $2$ ganger innfører tre lineære begrensninger på plane kurver, så rommet av kvintikker representert som snittet av en kvadrikk
og $S$ er et underrom av $\mathcal O _ {\P^2}(4)$ av kodimensjon $3$.
Vi har at $\mathcal O _ {\P^2}(4)$ har samme dimensjon som $\mathcal O _ {\P^4}(2)$,
så vi har minst tre lineært uavhengige kvadrikker som ikke gir opphav til kvintikker på $S$,
og må derfor inneholde hele $S$.

To slike kvadrikker $Q_1,Q_2$ må være irredusible,\todo{Hvorfor det?}
så de snitter i en fjerdegradflate som inneholder $S$ av grad $3$,
og må derfor være på formen $S\cup P$ for et plan $P$, og (1) følger.

La $M=L=0$ være likningene som beskriver planet $P$.
Da finnes lineære former $A_i,B_i$ slik at likningen $A_iM + B_iL=0$ beskriver kvadrikken $Q_i$ for $i=1,2$.
Vi har at produktet 
$\begin{bmatrix}
A_1&B_1\\
A_2&B_2
\end{bmatrix}
\begin{bmatrix}
L\\M
\end{bmatrix}
$
forsvinner på snittet $Q_1\cap Q_2$.
Vektoren dreper planet, så matrisen står for å ta livet av $S$.
Det medfølger at determinanten $A_1B_2 - A_2B_1$ forsvinner på alle punktene i $S\setminus P$,
så $S\subset Q_3$ definert av likninga $A_1B_2 - A_2B_1 = 0$.

$Q_3$ er en kvadrikk, så snittet $P\cap S=P\cap Q_3$ definerer et kjeglesnitt.
\end{proof}

\begin{proposition}
Den generelle projiseringen av $S$ er en kubisk flate $S'\in\P^3$ som bare er singulær i en dobbel linje.
\end{proposition}
\begin{proof}
La $Q_1,Q_2$ være to kvadrikker som inneholder $S$ og et punkt $p\in\P^4\setminus S$.
Vi har $Q_1\cap Q_2=S\cup P$ ved forrige proposisjon, hvor $p\in P$.
Alle bisekanter i $S$ gjennom $p$ kutter kvadrikkene i tre punkter,
så hele bisekanten er inneholdt i snittet,
og dermed i $P$.
Snittet $S\cap P$ er en kjegle, så snittet projiseres to til en,
mens $S$ ellers projiseres isomorft.
\end{proof}

Det er en symmetri i om vi velger å projisere fra et generelt punkt først, og så fra et punkt på flaten, eller omvendt.

# Det lineære systemet gjennom to punkter

Betrakter vi heller det lineære systemet av kvadrikker gjennom to punkter i $\P^2$
tilsvarer det å projisere $S$ fra et punkt på flaten utenfor den eksepsjonelle divisoren.
Blåser vi opp de to punktene får vi en avbildning $\tilde{P^2}\to \P^3$
definert av det lineære systemet
$|2h - E - E^\prime|$
hvor $E,E^\prime$ er de to uavhengige lineære systemene.
Bildet definerer en flate $Q$ av grad $H^2=(2h - E - E^\prime)^2= 4 - 2=2$.

Blåser vi opp den andre gangen i et punkt på den eksepsjonelle divisoren tilsvarer
det å se på alle kvadrikker gjennom punktet med en bestemt retning.

# Flatene ned til $\P^3$

Vi får følgende diagram av flater med projeksjoner imellom

$$
\begin{tikzcd}
V\dar\drar
\\
V^\prime\dar\drar
&S\dar\drar
\\
\textrm{Steiner}
&S'
&\textrm{Kvadrikk}
\end{tikzcd}
$$

$$
\begin{matrix}
V&&&&\\
\downarrow&\searrow&&\\
V^\prime&&S&&\\
\downarrow&\searrow&\downarrow&\searrow&\\
\textrm{Steiner}&&S^\prime&&\textrm{Kvadrikk}
\end{matrix}
$$

Vertikale piler representerer generiske projeksjoner,
mens diagonale er projeksjoner fra punkter på flaten.

# Kvadrikker gjennom flere punkter

Ravi Vakil sine notater fortsetter oppblåsningene til flere punkter.
Det lineære systemet av kvadrikker gjennom tre punkter som ikke ligger på samme linje er beskrevet av
$|2h - E - E^\prime - E^{\prime\prime}|$.
Bildet ligger nå i $\P^2$ og er nødvendigvis en flate av grad $1$.

