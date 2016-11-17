+++
categories = ["Diskret matematik", "KTH"]
Description = "Grupper i diskret matematik"
date = "2016-11-17T18:54:45+01:00"
title = "Grupper"
author = "Davis"

+++

# Kapitel 20 - Grupper

## Gruppaxiomen
En grupp består av en mängd element och en binär operator. En grupp $G$ skrivs $(G, *)$.

En grupp måste uppfylla dessa fyra axiom:

* Gruppen ska vara **sluten**. $x * y \in G \quad \forall x, y \in G$
* Gruppen ska vara **associativ**. $(x * y) * z = x * (y * z) \quad \forall x,y,z \in G$
* Gruppen ska ha ett **identitet**selement $e$ så att $e * x = x * e = x$ 
* Varje element i gruppen ska ha en **invers** så att $x * x' = x' * x = e$

Gruppens **ordning** betecknas |G|.

## Exempel på grupper
Det finns **ändliga** och **oändliga** grupper. 
Exempel på ändliga grupper:

* Mängden av permutationer
* Liksidig triangel och andra geometriska former

Exempel på oändliga grupper:

* Heltalen vid addition

Symmetrierna i trianglen kan man få vid rotationer och speglingar. Triangeln har tre speglingar och tre rotationer vilka motsvaras av en rotation 0, 120 och 240 grader. Varje operation går att skriva in i en **latinsk kvadrat** av storleken $6 \times 6$.

## Gruppalgebra
En grupp sägs vara **abelsk** om gruppen är kommutativ. $xy = yx \quad \forall x,y \in G$

$xy = xz \Rightarrow y = z$ **vänsterkancellativa lagen**.

$ax = bx \Rightarrow a = b$ **högerkancellativa lagen**.

Ekvationen $ax = b$ har en entydlig lösning för $x$ i en grupp där $a,b \in G$.

## Ordning för gruppelement
**Ordningen** för ett gruppelement $g \in G$ är det minsta $n > 0$ så att $g^n =1$. Detta betecknas $o(g)$.

Om det inte finns ett $n$ så att det stämmer så sägs elementet ha **oändlig ordning**.

För ett element av ordning m så gäller $x^s = 1$ om $s|m$.

## Gruppisomorfi
En **isomorfi** är en ekvivalensrelation mellan grupper.

$(G_1,*)$ och $(G_2, \circ)$ är **isomorfa** om och endast om det finns en **bijektion** $\beta: G_1 \to G_2$ så att $\beta(g*g') = \beta(g) \circ \beta(g') \quad \forall g, g' \in G_1$.

$|G_1|$ och $|G_2|$ måste vara samma för att grupperna ska kunna vara isomorfa.

## Cykliska grupper
En grupp $G$ är **cyklisk** om det det finns ett element $x \in G$ sådant att varje $g\in G$ är $x^n$ för något heltal $n$. Detta element $x$ **genererar** gruppen.

**Generatorn** betecknas $G=\langle x\rangle$

Den **direkta produkten** $A \times B$ 

## Delgrupper
En **delgrupp** $H$ till $G$ betecknas $H \subseteq G$. 

En delmängd $H$ till en grupp $G$ är en delgrupp om och endast om:

* H är inte en tom mängd $H \ne \emptyset$
* **Sluten** $x,y\in H \Rightarrow xy\in H$
* **Invers** $x \in H \Rightarrow x^{-1} \in H$

## Sidoklasser
