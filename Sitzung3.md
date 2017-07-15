# Füllwörter löschen

### Paket tm laden
- install.packages("tm")
- library(NLP)
- library(tm)


# Intonationsanalyse (*sentiments*)

Im polmine-Repo gibt es eine vorgefertigte sentiments-Liste, die negative konnotierte Begriffe enthält. Hiermit lässt sich eine Bewertung der Häufigkeit von negativen Begriffen durchführen.

Besonders ist die Gewichtung der negativen Wörter - manche sind schlimmer als andere.

- SentiWS -> http://www.lrec-conf.org/proceedings/lrec2010/pdf/490_Paper.pdf
	- Groß- und Kleinschreibung wird beibehalten
		- Gutes Beispiel für unterschiedliche Bedeutung von Groß und 		Kleinschreibung: "Liebe" und "liebe"
	- Es gibt eine negativ und positiv-Liste
- Vorsicht im Umgang mit solchen Listen! "Quick and Dirty"-Ansatz. 

- Anwendungsbeispiel: twitteR

# Wichtige Standardpakete
- dplyr 
	- Verdichtung von *data tables*





