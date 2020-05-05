---
title: "Ringar och kroppar"
Description: "Ringar och kroppar i diskret matematik"
categories: ["Diskret matematik", "KTH"]
date: "2016-11-21T10:41:42+01:00"
expiryDate: "2020-05-03T11:21:28+02:00"
---

## Banor och stabilisatorer

**Banor** (orbits) skrivs $Gx$ för banan av G på X.

**Stabilisatorn** skrivs $G_x$

## Antalet banor

Antalet banor kan räknas ut med *Burnsides lemma*
$$\frac{1}{|G|}\sum_{g\in G}|F(g)|$$

Detta är även det som kalla **väsentligt olika** färgningar.

## Ringar

En **ring** $(R, +, \times)$ har två binära operationer: addition och multiplikation och uppfyller dessa tre axiom:

* $(R, +)$ är en kommutativ grupp. Identitetselementet är 0.
* $(R, \times)$ är *sluten, associativ och har identitet 1*
* De distributiva lagarna gäller. $a(b+c) = ab + ac$

## Inverterbara element i ringar

Ett element $x \in R$ är *inverterbart* om $ux = xu = 1$ för något $u \in R$. Inversen är entydlig.

Mängden $U(R)$ av inverterbara element av en ring $R$ är en grupp med multiplikationsoperatorn.

## Kroppar

En **kropp** (field) $(F, +, \times)$ uppfyller:

* $(F, +, \times)$ är en ring
* $F\\{0\\}$ är en kommutativ grupp
