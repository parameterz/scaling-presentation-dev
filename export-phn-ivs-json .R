# ==============================================================================
# EXPORT SYNTHETIC PHN IVS DATA → JSON
#
# Run this in R to generate phn_ivs_data.json
# Then commit both this output and index.html to your GitHub Pages repo.
#
# The JSON structure:
#   { "males":   [{ "bsa": 1.23, "ivs": 7.4 }, ...],
#     "females": [{ "bsa": 0.98, "ivs": 6.1 }, ...],
#     "meta":    { "n_male": ..., "n_female": ..., "alpha": 0.40, ... } }
# ==============================================================================

library(tidyverse)
library(jsonlite)

set.seed(2024)

BSA_COL <- "BSA_Haycock"
SEX_COL <- "SEX"

# PHN LVST coefficients — converted to mm
ALPHA <- 0.40
MEAN  <- 5.8    # mm
SD    <- 0.9    # mm

# ── Prepare & simulate ────────────────────────────────────────────────────────
phn_clean <- phn_data %>%
  filter(
    !is.na(.data[[BSA_COL]]),
    !is.na(.data[[SEX_COL]]),
    .data[[BSA_COL]] > 0
  ) %>%
  mutate(
    BSA = round(.data[[BSA_COL]], 3),
    SEX = .data[[SEX_COL]],
    Z   = rnorm(n(), 0, 1),
    IVS = round((MEAN + Z * SD) * BSA^ALPHA, 2)
  ) %>%
  filter(abs(Z) <= 3.5, IVS > 1)

males   <- phn_clean %>% filter(SEX == "Male")   %>% select(bsa = BSA, ivs = IVS)
females <- phn_clean %>% filter(SEX == "Female") %>% select(bsa = BSA, ivs = IVS)

cat(sprintf("Males: %d  |  Females: %d  |  Total: %d\n",
            nrow(males), nrow(females), nrow(males) + nrow(females)))

# ── Write JSON ────────────────────────────────────────────────────────────────
payload <- list(
  males   = males,
  females = females,
  meta    = list(
    n_male    = nrow(males),
    n_female  = nrow(females),
    alpha     = ALPHA,
    mean_mm   = MEAN,
    sd_mm     = SD,
    source    = "Lauzon-Schnittka 2025 — Z-score sampled, real PHN BSA values",
    generated = format(Sys.time(), "%Y-%m-%d")
  )
)

write(toJSON(payload, dataframe = "records", pretty = TRUE, auto_unbox = TRUE),
      "phn_ivs_data.json")

cat("Written: phn_ivs_data.json\n")
cat("Commit this file alongside index.html to your GitHub Pages repo.\n")