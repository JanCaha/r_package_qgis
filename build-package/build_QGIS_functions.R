source(here::here("build-package", "functions_fix_parameter_names.R"))
source(here::here("build-package", "functions_fix_algorithm_id.R"))
source(here::here("build-package", "functions_build_code_and_doc.R"))

file_text <- function(x){
  purrr::map_chr(x, function(x){
    if (fs::is_file(x)) {
      readr::read_file(x)
    } else {
      dir <- fs::dir_info("R")
      glue::glue_collapse(dir$path, sep = ",")
    }
  })
}

library(qgisprocess)

previous_files <- readr::read_rds(here::here("data-raw", "previous-files.rds"))

algs <- qgis_algorithms()

dir.create("data-raw", showWarnings = FALSE)

write.csv(algs, here::here("data-raw", "algorithms.csv"))

dir.create("R", showWarnings = FALSE)

for (i in 1:nrow(algs)) {

  alg <- algs[i,]

  if (alg$provider[1] == "native") {
    file_name <- glue::glue("qgis_{fix_algorithm_id(alg$algorithm_id)}")
  } else {
    file_name <- glue::glue("{alg$provider}_{fix_algorithm_id(alg$algorithm_id)}")
  }

  arguments <- qgisprocess::qgis_arguments(alg$algorithm[1])
  outputs <- qgisprocess::qgis_outputs(alg$algorithm[1])

  readr::write_file(glue::glue_collapse(list(build_fn_doc(alg, arguments, outputs),
                                             build_fn_code(alg, arguments, outputs$name[1])),
                                        sep = "\n\n"),
                    glue::glue("./R/{file_name}.R"))
}

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))

actual_files <- fileSnapshot(path = c(here::here("R"), here::here("man")),
                             full.names = TRUE,
                             digest = file_text)

changed <- changedFiles(previous_files, actual_files, check.file.info = c("size", "digest"))

readr::write_rds(changed$changed, here::here("data-raw", "changed_files.rds"))

readr::write_rds(actual_files, here::here("data-raw", "previous-files.rds"))
