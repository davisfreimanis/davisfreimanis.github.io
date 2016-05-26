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
**Begrepp**

$\theta$ är det riktiga värdet

$\theta^*_{obs}$ är utfallet av s.v. (en gissning)

$\theta^*$ är stickprovsvariabeln och också s.v.

En **Väntevärdesriktig skattning** förkortas ibland *vvr* skattning. En punktskattning sägs vara väntevärdesriktig om $E(\theta^*)=\theta$. D.v.s. om stickprovsvariabeln $\theta^\*$ har väntevärde $\theta$.

**Medelkvadratfelet** för en punktskattning $\theta^*_{obs}$ är $E((\theta^\*-\theta)^2)$.

**Effektivitet**. Om man har två väntevärdesriktiga skattningar så är den som har den som har lägst varians effektivast.

**Maximum-likelihood-skattning**.
Om man har oberoende observationer från stokastiska variabler så använder man formel 9.1. Man räknar ut Maximum-likelihood-funktionen:
$$
L(\theta) =
\begin{cases}
p\_{X_1}(x_1;\theta)\cdots p\_{X_n}(x_n;\theta) \\\\
f\_{X_1}(x_1;\theta)\cdots f\_{X_n}(x_n;\theta)
\end{cases}
$$
för det kontinuerliga respektive diskreta fallet. Logaritmera sedan produkten och använd logaritmlagarna för att förenkla uttrycket. Derivera sedan och sätt derivatan till 0. Lös sedan ut $\theta$.

**Minsta-kvadrat-skattning**.
Om man har oberoende observationer från stokastiska variabler så använder man formel 9.2. Man summerar differansen mellan skattningens värde med det förväntade väntevärdet som sedan kvadreras. Derivera sedan för att lösa ut variabeln $\theta$ som minimerar kvadratsumman. $$Q(\theta)=\sum_{i=1}^{n}(x_i - \mu_i(\theta_1,\theta_2,...,\theta_k))^2$$

## Kapitel 12 - Intervallskattning
**Konfidensintervall** ($\lambda$-metoden) används när standardavvikelsen är känd. Man låter $\theta^\*$ vara $N(\theta, D)$.
$$I\_{\theta}=\theta^\*_{obs}±D\cdot \lambda\_{\alpha/2}$$
är då ett konfidensintervall för $\theta$ med konfidensgraden $1-\alpha$.

**Konfidensintervall för väntevärde** ($t$-metoden)
$$I\_{\theta}=\theta^\*_{obs}±D^\*\_{obs}\cdot t\_{\alpha/2}(f)$$
där f brukar vara $n-1$ enligt §11.1d.

**Konfidensintervall för standardavvikelse** (baserad på $\chi^2$-fördelning)
$$I\_{\theta}=\theta^\*_{obs}±D^\*\_{obs}\cdot \lambda\_{\alpha/2}$$

## Kapitel 13 - Hypotesprövning

**Begrepp**

**Styrkefunktionen** $h(\theta) = P(förkasta \ H_0)$ då $\theta$ är rätt parametervärde.

**Konfidensmetoden** innebär att man skapar ett konfidensintervall. Man förkastar $H_0: \theta = \theta_0$ på nivån $\alpha$ om värdet $\theta_0$ inte tillför konfidensintervallet med konfidensgraden $1-\alpha$.

**$\chi^2$-test** för given fördelning löses med formeln: $$Q=\sum\_{j=1}^{r}\frac{(x\_{j}-np\_{j})^2}{np\_{j}}$$ och man kan förkasta nollhypotesen om $Q>\chi^2\_{\alpha(r-1)}$ och alla $np\_{j}\geq 5$

**$\chi^2$-test** för test av föredelning med skattade parametrar löses genom att jämföra det riktiga väntevärdet med det skattade. 
$\chi^2\_{\alpha}(r-k-1)$-fördelad, där r är antalet termer i summan och k är antalet okända parametrar man vill hitta.

**$\chi^2$-test** (homogenitetstest). Det enklaste sättet att lösa dessa uppgifter är att man sätter in alla värden i en matris på miniräknaren och använder funktionen `X-Test...` på miniräknaren. Om p-värdet är mindre än 0.05 så förkastar man nollhypotesen. Man kan även jämföra om Q-värdet är större än $\chi^2\_{\alpha}(t-1)$ och i så fall förkastas nollhypotesen. Om man gör det för hand så tar man hjälp av formeln för homogenitetstest i paragraf 14.3: $$Q=\sum^s\_{i=1} \sum^r\_{j=1} \frac{(x_{ij}-\frac{n_i m_j}{N})^2}{\frac{n_i m_j}{N}}$$
där s är antalet rader i matrisen och r är antalet columnet. Q blir ett utfall av en approximativt $\chi^2((r-1)(s-1))$-fördelad stokastisk variabel.