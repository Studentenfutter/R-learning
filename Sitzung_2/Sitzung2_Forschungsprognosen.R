
fgw <- c(CDU = 32, SPD = 31, GRU = 6.5, FDP = 13.5, LINKE = 6, PIRATEN = NA, AfD = 6.5)
insa <- c(CDU = 30, SPD = 33, GRU = 7, FDP = 13, LINKE = 	5, PIRATEN = NA, AfD = 7)
      
            
# Addiert sich das zu 100% ?
          
sum(fgw, na.rm = TRUE)

# Wie viel Prozent haben die Sonstigen Parteien?

fgw["Sonstige"] <- 100 - sum(fgw, na.rm = TRUE) # Neuen Wert Sonstige in den Vektor mit aufnehmen
insa["Sonstige"] <- 100 - sum(insa, na.rm = TRUE)


what <- "Sonstige" # Wir werden schreibfaul!

prognose_sonstige <- c(
  fgw = unname(fgw[what]),   # warum unname ? 
  insa = unname(insa[what])
)

prognose_sonstige 
# Schauen wir uns zum Vergleich alle Prognosen der FDP an

fdp <- "FDP"
prognose_fdp <- c(
  fgw = unname(fgw[fdp]),   # warum unname ? 
  insa = unname(insa[fdp])
)


# Visualize!

barplot(fgw)

barplot(fgw, cex.names = 1) # cex.names definiert die Schriftgröße der Vektorenamen

# Farbe hinzufügen, dafür checken wir die Vektorlänge und weisem jeden Vektor einen eigenen Farbwert zu
length(fgw)
barplot(
  fgw, 
  col = c("black", "red", "green", "yellow", "magenta", "orange", "blue", "grey"),
  main = "Sonntagsfrage NRW",
  sub = "Umfrage vom 08.05.2017",
  xlab = "Parteien",
  ylab = "Prognose in %",
  ylim = c(0,35) # Limit der y-Achse muss als c() ausgeführt werden - Unterer und oberer Grenzwert - Auch negative Werte möglich
  )
