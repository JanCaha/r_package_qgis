source(here::here("build-package", "functions_fix_parameter_names.R"))
source(here::here("build-package", "functions_fix_algorithm_id.R"))
source(here::here("build-package", "functions_build_code_and_doc.R"))

library(qgisprocess)
library(dplyr)

algs <- qgis_algorithms()

dir.create("data-raw", showWarnings = FALSE)

write.csv(algs, here::here("data-raw", "algorithms.csv"))

dir.create("R", showWarnings = FALSE)

# algs <- algs %>%
#   group_by(provider) %>%
#   sample_frac(0.1)

algs <- algs %>%
  filter(provider == "native") %>%
  slice(1:20)

for (i in 1:nrow(algs)) {

  alg <- algs[i,]

  if (alg$provider[1] == "native") {
    file_name <- glue::glue("qgis_{fix_algorithm_id(alg$algorithm_id)}")
  } else {
    file_name <- glue::glue("{alg$provider}_{fix_algorithm_id(alg$algorithm_id)}")
  }

  arguments <- qgisprocess::qgis_get_argument_specs(alg$algorithm[1])
  outputs <- qgisprocess::qgis_get_output_specs(alg$algorithm[1])

  readr::write_file(glue::glue_collapse(list(build_fn_doc(alg, arguments, outputs),
                                             build_fn_code(alg, arguments, outputs$name[1])),
                                        sep = "\n\n"),
                    glue::glue("./R/{file_name}.R"))
}

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
devtools::check()
devtools::install()
