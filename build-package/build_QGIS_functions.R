source(here::here("build-package", "build-functions", "functions_fix_parameter_names.R"))
source(here::here("build-package", "build-functions", "functions_fix_algorithm_id.R"))
source(here::here("build-package", "build-functions", "functions_build_code_and_doc.R"))
source(here::here("build-package", "build-functions", "functions_plugins.R"))
source(here::here("build-package", "build-functions", "function_file_text.R"))
source(here::here("build-package", "build-functions", "function_runs_on_github_actions.R"))

# Sys.setenv(R_QGISPROCESS_USE_JSON_OUTPUT = FALSE)
# options(qgisprocess.use_json_output = FALSE)

library(qgisprocess)

qgisprocess::qgis_configure()

library(dplyr)

if (!qgisprocess::has_qgis()){
  stop("Cannot build package `qgis` because QGIS installation cannot be found. See help for `qgisprocess::qgis_configure()`!")
}

print("----------------")
qgis_plugins()
qgis_enable_plugins(c("processing", "grassprovider", "processing_saga_nextgen"))
qgis_plugins()
print("----------------")

qgis_configure(use_cached_data = FALSE)

dir.create("R", showWarnings = FALSE)

source(here::here("build-package", "build_utils.R"))

previous_files <- readr::read_rds(here::here("data-raw", "previous-files.rds"))

algs <- qgis_algorithms() %>%
  dplyr::select(!c(tags, supported_output_raster_extensions, supported_output_table_extensions, supported_output_vector_extensions))

dir.create("data-raw", showWarnings = FALSE)

write.csv(algs, here::here("data-raw", "algorithms.csv"))

print("Algorithms collected!")

pb <- progress::progress_bar$new(total = nrow(algs))

for (i in 1:nrow(algs)) {

  alg <- algs[i,]

  if (Sys.getenv("GITHUB_PAT") != "") {
    print(glue::glue("{i}/{nrow(algs)} - {alg$provider[1]}:{fix_algorithm_id(alg$algorithm_id)}"))
  }

  if (alg$provider[1] == "native") {
    file_name <- glue::glue("qgis_{fix_algorithm_id(alg$algorithm_id)}")
  } else {
    file_name <- glue::glue("{alg$provider}_{fix_algorithm_id(alg$algorithm_id)}")
  }

  tryCatch(
    error = function(cnd) {
      print(glue::glue("Cant generate function - {alg$provider}_{alg$algorithm_id}."))
    },
    {
      arguments <- qgisprocess::qgis_get_argument_specs(alg$algorithm[1]) %>%
        dplyr::filter(!is.na(name))
      outputs <- qgisprocess::qgis_get_output_specs(alg$algorithm[1])

      readr::write_file(glue::glue_collapse(list(build_fn_doc(alg, arguments, outputs),
                                                 build_fn_code(alg, arguments, outputs$name[1])),
                                            sep = "\n\n"),
                        glue::glue("./R/{file_name}.R"))
    }
  )

  pb$tick()
}

print("Algorithms and helps builded!")

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))

print("Algorithms documented!")

actual_files <- fileSnapshot(path = c(here::here("R"), here::here("man")),
                             full.names = TRUE,
                             digest = file_text)

changed <- changedFiles(previous_files, actual_files, check.file.info = c("size", "digest"))

rlang::inform(glue::glue("Number of files added {length(changed$added)}, deleted {length(changed$deleted)} and modified {length(changed$changed)}."))

if (runs_on_github_actions()){

  rlang::inform("Saving changes to rds files.")

  readr::write_rds(changed$changed, here::here("data-raw", "changed_files.rds"))

  readr::write_rds(actual_files, here::here("data-raw", "previous-files.rds"))
}
