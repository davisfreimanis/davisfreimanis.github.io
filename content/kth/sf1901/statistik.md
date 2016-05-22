+++
date = "2016-05-17T13:17:49+02:00"
title = "Formler för statistik"
description = "Bra formler för kapitel 10 till 14"
author = "Davis"
categories = ["Sannstat", "KTH"]

+++

## Kapitel 10 - Beskrivande statistik
**Aritmetiska medelvärdet** kallas medelvärdet och betecknas $\bar{x}=\frac{1}{n} \sum_{j=1}^{n}x_j = \frac{x_1+x_2+\dots + x_n}{n}$

**Stickprovets standardavvikelse** är kvadratroten ur variansen. $s=\sqrt{\frac{1}{n-1} \sum_{j=1}^{n}(x_j-\bar{x})^2}$

## Kapitel 11 - Punktskattning
### Begrepp
$\theta$ är det riktiga värdet

$\theta^*_{obs}$ är utfallet av s.v. (en gissning)

$\theta^*$ är stickprovsvariabeln och också s.v.

En **Väntevärdesriktig skattning** förkortas ibland *vvr* skattning. En punktskattning sägs vara väntevärdesriktig om $E(\theta^*)=\theta$. D.v.s. om stickprovsvariabeln $\theta^\*$ har väntevärde $\theta$.

**Konsistent skattning**

**Medelkvadratfel**

**Effektivitet**

### Maximum-likelihood-skattning
Använd formel 9.1 och logaritmera sedan. Derivera och sätt uttrycket till 0 för att få ut Maximum-likelihood-skattningen.

### Minsta-kvadrat-skattning
Använd formel 9.2 och derivera.

## Kapitel 12 - Intervallskattning
**Konfidensintervall**

**Konfidensintervall för väntevärde**

**Konfidensintervall för standardavvikelse**

## Kapitel 13 - Hypotesprövning

**Begrepp**

**Styrkefunktion**

**$\chi^2$-test** för given fördelning

**$\chi^2$-test** för test av föredelning med skattade parametrar

**$\chi^2$-test** (homogenitetstest). Använd formel 14.3 eller `X-Test...` på miniräknaren

## Kapitel 14 - Regressionsanalys