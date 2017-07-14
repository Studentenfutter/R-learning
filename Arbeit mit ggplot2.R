#ggplot2

# Eine typische Art von Datentransformation notwendig: data tables - zerhacke mir die Tabelle in Untertabellen
# Immer eine Anordnung mit x-Achse, Y-Achse und Wert.
# Grundphilosophie: Grammar of Graphics - Schritt für Schritt Aufbauen, Schicht für Schicht

install.packages("dplyr")
library(dplyr)

install.packages("polmineR")
library(polmineR)

install.corpus("GermaParl", repo="http://polmine.sowi.uni-due.de/packages")
GermaParl::
  
install.packages("rcqp")
library(rcqp)

use("GermaParl")
corpus()

kwic("GERMAPARL", query = "Nachhaltigkeit")
sAttributes("GERMAPARL") # Zu allen Corpuselementen gibt es Meta-Informationen, diese.
kwic("GERMAPARL", query = '"[nN]achhaltig.*"', meta = c("text_date", "text_name")) # Adjektive miteinschließen, Großkleinschreibung egal

# Voreinstellung sind fünf Wörter or und nach dem Treffer, wir wollen aber 10

kwic("GERMAPARL", query = '"[nN]achhaltig.*"', 
     meta = c("text_date", "text_name"), 
     left = 10, 
     right = 10,
     cqp = TRUE) 

# Falls es zu umfangreich wird und zu lage dauern - Einfach in neue Variable und nur bestimmte Stellen anzeigen lassen, z-b- K[1:1000]


