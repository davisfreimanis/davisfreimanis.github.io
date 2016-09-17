+++
date = "2016-09-14T11:21:28+02:00"
title = "Grafteori"
description = "Grafteori i diskret matematik"
author = "Davis"
categories = ["Diskret matematik", "KTH"]

+++

# Kapitel 15 - Grafer

## Grafer och dess representation

En **Graf** betecknas $G=(V,E)$ där V motsvarar hörnen och E kanterna.

**Fullständig graf**. Alla hörn har en kant till de andra hörnen i grafen. Betecknas $K_n$

**Cyklisk graf**. Alla hörn har valens 2. Betecknas $C_n$

## Isomorfism

**Isomorfism** betyder att två grafer är samma. Graferna är isomorfa om det finns en bijektion (en funktion som är 1-1). 

Tre nödvändiga vilkor för isomorfi:

* Lika många hörn och kanter
* $\delta(v) = \delta(\alpha(v))$
* Lika många trianglar

## Valens

**Valens** är antalet kanter som gränsar till hörnet. Kallas även grad. Betecknas $\delta(x)$ för hörnet x. En graf är **k-reguljär** om alla hörn har valensen k.

Summan av alla valenser över alla hörn i en graf är $\sum_{v \in V} \delta(v) = 2|E|$.

## Stigar och cykler

* **Vandring** (walk) $v_1, v_2,...,v_n$
* **Väg** (trail) samma som vandring fast en kant får inte upprepas
* **Krets** (circuit) en väg som är sluten
* **Stig** (path) inget hörn upprepas
* **Cykel** (cycle) inget hörn upprepas förutom första och sista

**Hamiltoncykel** i en graf är en cykel där alla hörn passeras och avslutas vid samma hörn. *Det finns inget lätt sätt att avgöra om en graf är hamiltonsk (har en hamiltoncykel)*

**Hamiltonstig** är samma som en *hamiltoncykel*, men kan istället sluta på vilket hörn som helst.

**Eulerkrets** i en graf är en krets som innehåller varje kant exakt en gång. Kretsen avslutas i samma hörn som den började. 

**Eulerväg** är samma som en *eulerkrets*, men kan istället sulta i vilket hörn som helst.

En graf $G=(V, E)$ har en *eulerkrets/väg* om och endast om:

* G är sammanhängande förutom ensamma hörn
* G har inga/två hörn med udda valens

Om det finns två udda hörn i grafen så måste vägen börja och sluta i respektive hörn.

## Träd

Ett **träd** T har två egenskaper:

* T är sammanhängande
* Det finns inga cykler i T

Om $T=(V,E)$ är ett träd med $|V| \geq 2$ så gäller även:

* För varje par $x,y$ av hörn så finns det en unik väg i T från x till y
* Grafen man får från T när man tar bort en kant har två komponenter vilka i sin tur är träd
* $|E|=|V|-1$

## Hörnfärgning

Hörnen på en graf kan färgläggas så att en kant går mellan två olika färgade hörn. 

**Kromatiska talet** betecknas $\chi(G)$ och är det minsta antalet färger som behövs för att färglägga hörnet på en graf G. Det kan vara svårt och tidskrävande att räkna ut det kromatiska talet och därför används giriga algoritmer som får ut ett tillräckligt bra närmevärde till det kromatiska talet och ibland även det minsta.



# Kapitel 17 - Bipartita grafer

## Bipartita grafer
En **bipartit** grafs hörn kan delas upp i två mängder $X$ och $Y$ där varje hörn i $X$ endast har kanter till hörn i $Y$ och vice versa. En bipartit graf kan alltid färgläggas med två färger.

$$\sum\_{x \in X} \delta(x) = \sum\_{y \in Y} \delta(y) = |E|$$

## Kantfärgning
Kanterna i en graf kan färgläggas så att inget hörn har två kanter med samma färg. Det minsta antalet färger kallas för det **kromatiska indexet** och betecknas $\chi'(G)$

I en *bipartit graf* så är det minsta antalet färger den största valensen i grafen.

## Latinska kvadrater
En **latinsk kvadrat** är en $n \times n$ matris där det finns n olika symboler i varje rad och kolumn.

Man kan alltid göra klart en $n \times m$ latinsk rektangel till en $n \times n$ latinsk kvadrat.

## Matchningar
En **matchning** i en graf $G=(X \cap Y, E)$ är när ett hörn i mängd X har en disjunkt kant till ett hörn i mängd Y. En *fullständig matchning* är när alla hörn i X har en kant till Y. En *maximal matchning* är när maximalt antal hörn i X har en matchning till Y.

**Halls vilkor** i en graf $G=(X \cap Y, E)$ så gäller: $$|N(A)| \geq |A|$$ där $N(A)$ är mängden unika grannar till A och där A är alla delmängder av X. Vilkoret måste vara uppfyllt för att det ska kunna finnas en fullständig matchning i G.

## Maximala matchningar

**Theorem 17.5.2**

**Alternerande stig**

## Transversaler
En **transversal** är en mängd element från ett ändligt antal familjer. Man får en *transversal* genom att ta ett element från varje familj utan att något av de elementen är samma.

$$\tau = \\{S_i|i \in I\\}$$

har en transversal endast om 

$$|\cup\_{i \in H} S_i| \geq |H|$$

för alla $H \subseteq I$ gäller.



# Planära grafer

En **plan graf** ritad i planet har inga korsande kanter. En **planär graf** är isomorf med en plan graf, men kan vara ritad med korsande kanter.

En plan graf har $\chi \leq 4$.

Den plana grafen delar in planet i ytor som betecknas **r**.

För att räkna ut kanter **e**, hörn **v**, ytor **r** eller komponenter **c** så kan man använda sig av formeln:

$$v-e+r-c=1$$

eller om grafen är sammanhängande (Eulers polyederformel):

$$v-e+r=2$$

För en *sammanhängande* graf så gäller:

$$3v \geq e+6$$

För en *bipartit* och *sammanhängande* graf så gäller:

$$2v \geq e+4$$

**Kuratowskis sats** säger att grafen G är icke-planär om och endast om en graf som är isomorf med $K_5$ eller $K\_{3,3}$ kan får från G genom att sugga ut hörn med valens 2.

**Wagners sats** säger att grafen G är icke-planär om man istället tar bort kanter genom att sammanfoga två hörn.

**Duala grafen** av $G$ betecknas $G^{\bot}$. Man får en dual graf om man:

* Lägger ett hörn i varje yta
* Drar en kant mellan de nya hörnen
* De nya kanterna går igenom endast en G kant

Om $G$ är sammanhängande så är $G$ och $G^{\top}$ varandras dualgrafer.

En **platonska kropp** är en dubbelt reguljär graf vilket innebär att varje hörn har samma valens **$n \geq 3$** och varje yta har lika många gränsande kanter **$m \geq 3$**. Det finns totalt 5 *platonska kroppar* där dualgrafen är en *platonsk kropp* med $n$ och $m$ omvänt.

