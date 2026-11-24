# Webseitentest
Testprojekt mit **fiktiven Daten**, um eine Webseite mit Quarto und GitHub Pages
auszuprobieren. 

**Webseite:** https://sagerpd.github.io/regression-pages-test/

## Inhalt

| Ordner / Datei | Inhalt |
|---|---|
| `01_Beispielanwendungen` | Zwei Praxisbeispiele (lineare und quadratische Regression) |
| `02_Illustrationen` | Abbildungen mit simulierten Daten |
| `Daten` | Fiktiver Datensatz und das Skript, das ihn erzeugt |
| `Referenzen` | Literatur und Zitierstil (APA) |
| `docs` | Webseite (wird von `quarto render` erzeugt) |
| `index.qmd` | Startseite der Webseite |
| `_quarto.yml` | Einstellungen für die Webseite (Navigation, Format) |

## Selbst mit dem Code arbeiten

1. Das Projekt über *Code → Download ZIP* herunterladen und entpacken.
2. `regression-pages-test.Rproj` in RStudio öffnen.
3. Packages installieren, falls nötig: `install.packages(c("ggplot2", "here"))`
4. Eine `.qmd`-Datei öffnen und auf *Render* klicken.

## Webseite aktualisieren

Im Terminal von RStudio:

```
quarto render
```

Danach alle Änderungen (auch im Ordner `docs`) committen und pushen.
GitHub Pages aktualisiert die Seite nach etwa einer Minute.
