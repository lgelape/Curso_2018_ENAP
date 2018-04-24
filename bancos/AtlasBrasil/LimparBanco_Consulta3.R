library(readxl)

banco2 <- read_excel("AtlasBrasil/AtlasBrasil_Consulta3.xlsx")
names(banco2) <- c("munic", "maes_chefes_91", "maes_chefes_00",
                   "maes_chefes_10", "mortalidade_91", "mortalidade_00",
                   "mortalidade_10")
banco2 <- banco2 %>%
  mutate(uf = substr(munic, nchar(munic) - 2, nchar(munic) - 1)) %>%
  mutate(munic = substr(munic, 1, nchar(munic) - 4))

write.csv2(banco2, "AtlasBrasil/AtlasBrasil_Consulta3_tratado.csv", row.names = F)

