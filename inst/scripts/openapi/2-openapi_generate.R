# Generate code with R openapi generator
require(glue)
require(here)
require(assertthat)

openapi_gen <- function(input_spec) {
  assert_that(file.exists(input_spec))
  config <- here("inst/scripts/openapi/config.yml")
  outdir <- here()
  cmd <- glue("openapi-generator generate")
  opts <- glue(
    "--input-spec {input_spec} ",
    "--git-host github.com ",
    "--git-repo-id icar1 ",
    "--generator-name r ",
    "--output {outdir} ",
    "--config {config} "
  )
  cmd <- glue("{cmd} {opts}")
  system(cmd)
}

here("inst/extdata/openapi/swagger_icav1_merged_2023-03-31.json") |>
  openapi_gen()
