+++
date = "2016-04-27T11:21:28+02:00"
title = "Övning 1"
description = "Länkning, preprocessorer, kompilatorer, makefiler"
author = "Davis"
categories = ["C++", "KTH"]

+++

# Övning 1
## Makefiler

## Länkning
Kompilerar objektfiler från cpp filerna och sedan länkar till en exekverbarfil. Kollar även om ändringar är gjorda för att inte kompilera om.

## Preprocessorer
Man inkluderar headerfilerna `#include "header.h"` (söker lokalt i mappen) eller `<header.h>` (söker i standardsökvägarna).
`#define` är till för att definiera macron #undef för att ta bort definitionen.

## Pekare och referencer
int x = 0; // lägger int på stacken
int *p = &x; // skapar en pekare som refererar till minnespositionen där x ligger
int &r = x;

Man kan inkrementera *p med ++ så kommer den hoppa 4 bytes fram då en int vanligtvis tar så mycket plats.

## Strukturer
Struct allt public som default
Class allt private som default

## Scope

```
int getX();
```

```
int Koord::getX() 
{
	return x;
}
```

The java way
```
void setX(int x);

void Koord::setX(int x)
{
	this->x = x;
}
```

The C way
```
int& x()
{
	return x;
}
```

När en metod definieras som const så kommer inga värden att ändras. Read only metod!! En const metod kan ENDAST anropa read only metoder.

`this` är en pekare och för att komma åt den så måste man skriva `(*this).x`. Ett enklare sätt att skiva det är `this->x`.

# Rule of three
Körs automatiskt
* Copy consturctor
* Destructor
* Tilldelningsoperator