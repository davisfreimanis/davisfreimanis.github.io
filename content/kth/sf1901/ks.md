+++
date = "2016-04-27T11:21:28+02:00"
title = "Formulas for KS"
description = "Useful formulas for the midterm exam in probability and statistics"
author = "Davis"
categories = ["Sannstat", "KTH"]

+++

## Kapitel 2 - Sannolikhetsteorins grunder
### Händelser
**Utfall** är resultatet av ett slumpmässigt försök

**Händelse** är en samling av utfall och betecknas med stora bokstäver $A, B, C,...$ 

**Utfallsrummet** är mängden av möjliga utfall och betecknas $\Omega$

**Union** $A \cup B$ är då $A$, $B$ eller $A$ och $B$ inträffar

**Snitt** $A \cap B$ är då både $A$ och $B$ inträffar

$A$ och $B$ är **disjunkta** om $A$ och $B$ inte kan inträffa samtidigt

$0 \leq P(A) \leq 1$

$P(\Omega)=1$

Om $A_1, A_2,...$ är disjunkta så gäller $P(A_1 \cup A_2 \cup ...)=P(A_1)+P(A_2)+...$

För **komplementet** $ A^* $ gäller $P(A^*)=1-P(A)$

$P(A \cup B)=P(A)+P(B)-P(A \cap B)$

$P(A \cap B)=P(A)+P(B)-P(A \cup B)$

$P(A \cap B \cap C)=P(A)P(B)P\(C)$ **om $A$, $B$ och $C$ är oberoende**

### Kombinatorik
$\binom{n}{k}=\frac{n(n-1)\cdots (n-k+1)}{k!}$ på miniräknaren `n nCr k`

### Betingad sannolikhet
Den **betingade sannolikheten** uttrycks $P(B|A)=\frac{P(A \cap B)}{P(A)}$ som ger sannolikheten för $B$ givet att $A$ har inträffat


## Kapitel 3 - Endimensionella stokastiska variabler
$p_X(x)$ kallas **sannolikhetsfunktionen**

$f_X(x)$ kallas **täthetsfunktionen**

$F_X(x)=P(X \leq x)$ kallas **fördelningsfunktionen**

$F'_X(x)=\frac{d}{dx}F_X(x)=f_X(x)$

$P(a < X \leq b)=F_X(b)-F_X(a)$



## Kapitel 5 - Väntevärden
**Väntevärde** för en diskret stokastisk variabel X definieras av: 
$E(X)=\sum_{k} kp_X(k)$ 

**Väntevärde** för en kontinuerlig stokastisk variabel X definieras av:
$E(X)=\int_{-\infty}^{\infty} xf_X(x) dx$

$E(aX+bY+c)=aE(X)+bE(Y)+c$

$E(XY)=E(X)E(Y)$ **om $X$ och $Y$ är oberoende**

**Varians** räknas lättast ut med sambandet 
$V(X)=E(X^2)-[E(X)]^2$

$V(aX+b)=a^2V(X)$

$V(aX+bX+c)=a^2V(X)+b^2V(Y)+2abC(X,Y)$

$V(X+Y)=V(X)+V(Y)$ **om $X$ och $Y$ är oberoende**

**Standardavvikelse** räknas ut med hjälp av variansen 
$D(X)=\sqrt{V(X)}$

$D(aX+b)=|a|D(X)$

**Kovarians** följer av sambandet
$C(X,Y)=E(XY)-E(X)E(Y)$

Om $C(X,Y)=0$ så är $X$ och $Y$ okorrelerade

**Korrelationskoefficienten** för $X$ och $Y$ definieras av 
$\rho(X,Y)=\frac{C(X,Y)}{D(X)D(Y)}$ och är alltid $-1 \leq \rho \leq 1$



## Kapitel 6
### Allmän normalfördelning
Alla **normalfördelningar** $N(\mu, \sigma)$ kan skrivas om till den **standardiserade normalfördelningen** $N(0,1)$

$P(a < X < b)=P(\frac{a-\mu}{\sigma} < \frac{X-\mu}{\sigma} < \frac{b-\mu}{\sigma})=P(\frac{a-\mu}{\sigma} < Y < \frac{b-\mu}{\sigma})=\Phi(\frac{b-\mu}{\sigma})-\Phi(\frac{a-\mu}{\sigma})$

För att räkna ut $\Phi(x)$ på en Ti-räknare så använder man `normcdf(-1e99,x,0,1)`
