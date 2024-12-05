# R-Pakete laden ----------------------------------------------------------

library(tidyverse)
library(ggthemes)

# Daten importieren -------------------------------------------------------
winterthur <- read_csv(here::here("daten/raw/KTZH_00002604_00005328.csv"))

# Daten bereinigen
winterthur_daten_bereinigt <- winterthur |> 
  filter(stadtkreis %in% c("Stadt","Veltheim","Seen", "Töss", "Mattenbach", "Oberwinterthur", "Wülflingen")) |> 
  select(jahr, stadtkreis, quartier, staatenkleingruppe, anzahl)

# Daten speichern
write_csv(winterthur_daten_bereinigt,
          here::here("daten/processed/Daten-Projekt-hugobre-bereinigt.csv"))