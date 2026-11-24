# Fiktiven Datensatz für die Testseite erzeugen


  library(here)
  set.seed(161)

  n <- 300

# Bildung in Jahren (9 bis 20) und Alter in Jahren (18 bis 80)
  bildung <- sample(9:20, n, replace = TRUE)
  alter   <- sample(18:80, n, replace = TRUE)

# Einkommen: steigt linear mit der Bildung
  einkommen <- round(1500 + 350 * bildung + rnorm(n, 0, 1200), -1)
  einkommen <- pmax(einkommen, 1000)

# Lebenszufriedenheit (0 bis 10): U-förmig im Alter, Tiefpunkt um 48 Jahre
  zufriedenheit <- 7.2 + 0.0012 * (alter - 48)^2 + rnorm(n, 0, 1.4)
  zufriedenheit <- pmin(pmax(round(zufriedenheit), 0), 10)

  befragung <- data.frame(id = seq_len(n), bildung, alter,
                          einkommen, zufriedenheit)

  write.csv(befragung, here("Daten", "mock_befragung.csv"), row.names = FALSE)
