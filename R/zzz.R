.onLoad <- function(libname,pkgname){
  #nocov start
  use_cache <- getOption("piggyback.cache", default = TRUE)
  if(!use_cache) cli::cli_alert_info("piggyback.cache set to FALSE - caching disabled")
  if(use_cache){
    cache_duration <- as.numeric(Sys.getenv("piggyback_cache_duration", unset = "600"))
    assign(x = "pb_info",
           value = memoise::memoise(pb_info, ~ memoise::timeout(cache_duration)),
           envir = parent.env(environment()))
    assign(x = "pb_releases",
           value = memoise::memoise(pb_releases, ~ memoise::timeout(cache_duration)),
           envir = parent.env(environment()))
  }
  #nocov end
}
