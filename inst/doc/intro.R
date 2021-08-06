## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  results="hide",
  eval = Sys.getenv("CBOETTIG_TOKEN", FALSE)
)

Sys.setenv(piggyback_cache_duration=0)


