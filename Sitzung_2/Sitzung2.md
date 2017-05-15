# Funktionen

## Standard statistische Operationen
mean() - Mittelwert
    * na.trim = FALSE ist standardmäßig, Gibt Fehlermeldung bei NA Werten

weighted.mean() - gewichteter Mittelwert

rm()
   * entfernt values aus dem Speicher

Arten von Vectoren
  * numeric
  * logisch (0 und 1-Werte)
  * character-Vektoren

is()
  * kombinierbar mit ".", z.b. is.numeric, is.logical -> Ausgabe TRUE or FALSE

rev()
  * dreht alle positionen in einem Vektor um

order()
  * Ordnet den Werten eines Vektors eine Position zu, aufsteigend von niedrigstem Wert bis zum höchsten Wert.
  * decreasing = FALSE ist standardmäßig, d.h. das aufsteigend sortiert wird.
  * Sehr gut zur Sortierung von Werten
    * Beispiel: Variable _value_
      values[order(values)] -> Gibt die Variable value aufsteigend sortiert aus.


rep(c(1,2,3), times = 3)

## Mehrere Vektoren kombinieren
Kombination verschiedener Vektorenarten -> R wandelt die Vektoren in das niedrigst mögliche Niveau um (wie bei Skalenniveaus)
Ansonsten: Umformung möglich mit _as.*_
  * as.numeric
  * as.logical
  * as.character


# Visualisierung
## Ohne G-Plot

barplot()
  * col = c("green", "yellow" ....) <- ordnet jedem Vektorwert eine Farbe zu
  * xlab / ylab <- Achsenbeschriftung
  * main <- Titel
  * xlim / ylim <- Größe der Achse


# Pakete

knitr - Macht aus Rmarkdown-Dokumenten HTML und erstellt die R-Markdown-Konsole
