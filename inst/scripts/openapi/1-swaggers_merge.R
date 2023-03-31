# Merge multiple ica v1 swaggers into one
require(dplyr)
require(purrr)
require(glue)
require(here)
require(assertthat)
require(jsonlite)

service <- c("wes", "tes", "gds", "ens")
swaggers <- here(glue("nogit/swaggers/{service}.json")) |>
  set_names(service) |>
  map(read_json)
# all swaggers share a few elements, just grab them from first one
l <- swaggers[[1]][c("swagger", "info", "host", "securityDefinitions", "security")]

# now grab paths and definitions from each separately
pluck_paths <- function(x) {
  pluck(x, "paths")
}
pluck_definitions <- function(x) {
  pluck(x, "definitions")
}
l[["paths"]] <- map(swaggers, pluck_paths) |>
  list_flatten(name_spec = "{inner}")
l[["definitions"]] <- map(swaggers, pluck_definitions) |>
  list_flatten(name_spec = "{inner}")

# now write merged json
merged_json <- here("inst/extdata/openapi/swagger_icav1_merged_2023-03-31.json")
fs::dir_create(dirname(merged_json))
l |>
  write_json(merged_json, auto_unbox = TRUE, pretty = TRUE)
