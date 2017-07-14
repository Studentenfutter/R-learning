# Wie filtern wir bestimmte Worte?
# Stop-Words die Standards sind - tm - Paket ist hier Standard

install.packages("tm")

# Private Blätte Pakete laden

install.packages("allbus", repos="http://polmine.sowi.uni-due.de/packages")
install.packages("gles", repos="http://polmine.sowi.uni-due.de/packages")

library(NLP)
library(tm)

?stopwords

# Deutsche Stopwords laden - Vorsicht im Umgang! (Bsp.: "Wir")

stopwords(kind = "de")

# Möglichkeit 1: Bestimmte Wörter aus der Stopwordliste streichen

sentence <- c("Das", "ist", "ein", "Satz", "mit", "vielen", "Worten", ".") # Beispielsatz
sentence %in% stopwords("german") # Gibt einen logischen Vektor aus

sentence[sentence %in% stopwords("german")] # Gib mir nur die wahren Werte aus
sentence[!sentence %in% stopwords("german")] # Gib mir nur die UNwahren Werte aus

sentence_filtered <- sentence[!sentence %in% stopwords("german")]
# Das Wort "Das" ist noch drin, da es großgeschrieben wird. Lösung: Alle Buchstaben der Variable sentence in Kleinbuchstaben konvertieren.

sentence_lowercase <- tolower(sentence)
sentence_lowercase_filtered <- sentence_lowercase[!sentence_lowercase %in% stopwords("german")] # Gib mir nur die UNwahren Werte aus

# Satzzeichen sollen auch noch raus

interpunctation <- c(".", ",", "?", "!", ":", ";")


# Gute Lösung - jetzt machen wir mal vorsätzlich eine schlechte.

for(i in 1:5){    # Für jedes i in der Zahlenfolge 1 bis 5 
  print("nächster Durchlauf der for-Schleife")
  print(i)        # Gebe i aus
  
}

for(word in sentence){    # Für jedes Wort in sentence
  print(word)        # Gebe das Wort aus - danach nächster Durchlauf.
}

for(word in sentence){    # Für jedes Wort in sentence
  print(word)        # Gebe das Wort aus - danach nächster Durchlauf.
}

# Bedingungen

if("das" %in% stopwords("german")){
  print("Das ist ein Stopword! Weg damit!")
  } else {
  print("Kein Stopwort, bitte behalten")
  
}

sentence_filtered2 <- character()
for(word in sentence_lowercase){    # Für jedes Wort in sentence
  if(word %in% stopwords("german")){
    print(word)
    print("Das ist ein Stopword! Weg damit!")
  } else {
    print("Kein Stopwort, bitte behalten")
    sentence_filtered2 <- c(sentence_filtered2, word) # sentence_filtered2 ist unser neuer, "bereinigter" Charactervektor
    }
}
