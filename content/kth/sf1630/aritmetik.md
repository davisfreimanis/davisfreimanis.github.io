+++

date = "2016-09-14T11:21:28+02:00"
title = "Heltalsaritmetik"
description = "Heltalsaritmetik i diskret matematik"
author = "Davis"
categories = ["Diskret matematik", "KTH"]

+++

# Kapitel 5 - Funktioner

## Funktionskonceptet

En **funktion** $f: X \to Y$ är en svart låda som tar ett element från mängden $X$ och returnerar ett unikt element från mängden $Y$.

## Surjektioner, Injektioner och Bijektioner

En funktion $f: X \to Y$ är **surjektiv** om för alla $y \in Y$ är en bild av **minst ett** $x\in X$.

En funktion $f: X \to Y$ är **injektiv** om för alla $y \in Y$ är en bild av **högst ett** $x\in X$.

En funktion $f: X \to Y$ är **bijektiv** om för alla $y \in Y$ har **exakt ett** $x\in X$. 

En funktion är **bijektiv** om den är **surjektiv** och **injektiv**. Det vill säga att varje element $x\in X$ avbildas på ett $y\in Y$.

## Sammansatta funktioner

En funktion kallas **sammansatt** av funktionerna $f: X \to Y$ och $g: Y \to Z$ och skrivs $(g \circ f)$ och är samma sak som att skriva $g(f(x))$.

Om $f$ och $g$ är *injektiva* så är även **kompositionen** $g \circ f$ det.

Om $f$ och $g$ är *surjektiva* så är även **kompositionen** $g \circ f$ det.

Om $f$ och $g$ är *bijektiva* så är även **kompositionen** $g \circ f$ det.

## Bijektioner och inversa funktioner

En funktion $f:X \to Y$ har en **invers** funktion $g: Y \to X$ om för alla $x \in X$ och $y \in Y$

$$(g \circ f)(x)=(x)$$
$$(f \circ g)(y)=(y)$$

En funktion har en *invers* om och endast om funktionen är **bijektiv**.



# Kapitel 6 - Räkning



# Kapitel 8 - Delbarhet och primtal

## Delbarhet

$x$ är en **multipel** av $y$ om $x=yq$ där $q \in \mathbb{Z}$.

$y$ är en **faktor** av $x$ och $y$ **delar** $x$. Detta skrivs $y | x$. Det innebär att resten blir 0.

## Kvot och rest

Om $x$ och $y$ inte delas så skrivs det $y\not| x$.

Det som blir över av heltalsdivisionen blir **resten**.

## Representation av heltal

## Största gemensama delaren (SGD)

**Största gemensama delaren** (SGD eller GCD på engelska) är det tal som är det största talet som delar $x$ och $y$.

**Euklides algoritm**

Två tal $x$, $y$ är **relativt prima** (coprime) om $sgd(x,y)=1$.

## Primtal

Ett heltal $x$ är ett **primtal** om $x \geq 2$ och de enda delarna är 1 och $x$ själv.

Man kan alltid **primtalsfaktorisera** ett heltal.

## Primtalsfaktorisering



# Kapitel 13 - Modulär aritmetik

## Kongruens

Ett heltal $x_1$ är **kongruent** med $x_2$ **modulo** $m$ om $x_1 - x_2$ är delbart med $m$. Vi skriver detta $x_1 \equiv x_2$ (mod m) eller $x_1 \equiv_m x_2$.

Om vi har heltalen $x_1$, $x_2$, $y_1$ och $y_2$ så att:

$$x_1 \equiv_m x_2$$ 
$$y_1 \equiv_m y_2$$

så gäller det att:

$$x_1 + y_1 \equiv_m x_2 + y_2$$
$$x_1 y_1 \equiv_m x_2 y_2$$

## $\mathbb{Z}_m$ och dess aritmetik



## Inverterbara element i $\mathbb{Z}_m$

# Kinesiska restsatsen
