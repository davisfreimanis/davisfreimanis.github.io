---
date: "2016-09-21T14:56:56+02:00"
expiryDate: "2020-05-03T11:21:28+02:00"
title: "Kombinatorik"
description: "Kombinatorik i diskret matematik"
categories: ["Diskret matematik", "KTH"]
---

## Ekvivalensrelationer

En **relation** på en mängd $X$ är en mängd av ordnade par av medlemar av $X$.

En **relation** kan ha dessa tre egenskaper:

* **Reflexiv** om $xRx$ för varje $x \in X$
* **Symmetrisk** om $xRy$ så gäller även $yRx$
* **Transitiv** om $xRy$ och $yRz$ så är $xRz$

En **eqvivalensrelation** är en relation som har alla tre egenskaperna.

## Klassifikationer

Man kan dela upp mängderna som har samma ekvivalensrelation till en klass.

## Additionsprincipen

Om $A$ och $B$ är disjunkta icke-tomma mängder så är: $$|A \cup B| = |A| + |B|$$

## Multiplikationsprincipen

Om $A$ och $B$ är icke-tomma mängder så är: $$|A \times B| = |A| \times |B|$$

## Binomialtal

**Binomialtal** betecknas ${a}\choose{b}$ och läses 'a över b'.
Man använder **binomialtal** för att räkna ut antalet b-delmängder ur a utan upprepning.

**Binomialtalen** kan antingen räknas ut rekursivt med *Pascals triangel* eller med formeln: $${{n}\choose{r}}=\frac{n!}{r!(n-r)!}$$

## Oordnant med repetition

${{n+r-1}\choose{r}}$ antal sätt att välja r från n med repetition.

## Binomialsatsen

$(a+b)^n={{n}\choose{0}}a^n+{{n}\choose{1}}a^{n-1}b+...+{{n}\choose{n}}b^n$

## Sållprincipen (Sieve principle)

Visualisera med Venndiagram.
Om $A_1$, $A_2$, ..., $A_n$ är mängder då gäller: $$|A_1 \cup A_2 \cup ... \cup A_n| = \alpha_1 - \alpha_2 + \alpha_3 - ... + (-1)^{n-1}\alpha_n$$

där $\alpha_n$ är överlappningar med kardinalitet n som inkluderas och exkluderas vid unionen.

## Partitioner av en delmängd

En **familj** av mängder består av mängder som kallas **delar**. En **partition** är en familj i familjen.

**Stirlingtal** betecknas $S(n,k)$ och är antalet partitioner av en n-mängd X i k delar där $1 \leq k \leq n$
$$S(n,1)=1$$
$$S(n,n)=1$$
$$S(n,k)=S(n-1,k-1)+kS(n-1,k)$$

Lättast är att visualisera **stirlingtalen** i en pyramid.

## Multinomialtal

Antalet sätt att fördela n st olika element i k st lådor med $n_i$ st i låda $i$.

$${{n}\choose{n_1, n_2, ... , n_k}}=\frac{n!}{n_1!n_2!...n_k!}$$

där summan av $n_1+n_2+...+n_k=n$ och $n_i \geq 0$
