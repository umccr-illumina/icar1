# Download ICA v1 swaggers
require(dplyr)
require(purrr)
require(glue)
require(here)
require(assertthat)
require(fs)

swagger_url <- "https://aps2.platform.illumina.com/{service}/swagger/v1/swagger.json"
service <- c("wes", "tes", "gds", "ens")
urls <- glue(swagger_url) |> set_names(service) |> as.character()

download_swagger <- function(nm) {
  assert_that(nm %in% service)
  from <- urls[nm]
  to <- glue("{nm}.json")
  outdir <- here("nogit/swaggers")
  fs::dir_create(outdir)
  download.file(url = from, destfile = file.path(outdir, to))
}

map(service, download_swagger)
