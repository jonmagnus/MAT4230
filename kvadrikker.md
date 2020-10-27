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

Vi får at graden til flaten blir $H^2=(2h - E)^2 = d^2 - 1$.


---

Generiske projeksjoner bevarer graden til flaten siden det er en avbildning fra et lineært system av linjer gjennom 
punktet vi projiserer vekk fra.
Projiserer vi vekk fra et punkt på flaten må vi også ta hensyn til den eksepsjonelle divisoren.

Om vi projiserer fra et punkt på Veronese flaten får vi en flate av grad $H^2 = d^2 - 1=3$ i $\P^4$
Denne avbildningen har et basispunkt, nemlig projiseringspunktet.
Trekker vi tilbake punktet får vi et punkt i $\P^2$ hvor avbildningen ikke er definert.
Avbildningen korresponderer til det lineære systemet av kvadrikker gjennom punktet.
Blåser vi opp punktet får vi morfi $\F_1\to\P^4$.

Vi har at $\F_1=\P(\mathcal O _ {\P^1}\oplus \mathcal O _ {\P^1}(1))$, så Picard-gruppen er generert av to elementer $h,f$.
\todo {Bruk at det er generert av de to divisorene til å argumentere for at det ikke finnes flere linjer}

Vi kan så enten projisere fra et generelt punkt eller et nytt punkt på flaten.
Om vi projiserer fra et generelt punkt endrer vi opp med 

# Oversikt

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

