skip_in_RCDMCHECK <- function(){
  skip_if(Sys.getenv("_R_CHECK_CODE_USAGE_WITH_ONLY_BASE_ATTACHED_") == TRUE, "Skipping for RCMDCHECK")
}

get_alg_help <- function(alg_name){

  source(here::here("build-package", "build-functions", "functions_fix_algorithm_id.R"))
  source(here::here("build-package", "build-functions", "functions_fix_parameter_names.R"))
  source(here::here("build-package", "build-functions", "functions_build_code_and_doc.R"))

  algs <- qgisprocess::qgis_algorithms() %>%
    dplyr::select(!c(tags, supported_output_raster_extensions, supported_output_table_extensions, supported_output_vector_extensions))

  alg <- algs %>%
    dplyr::filter(algorithm_id == alg_name)

  arguments <- qgisprocess::qgis_get_argument_specs(alg$algorithm[1]) %>%
    dplyr::filter(!is.na(name))
  outputs <- qgisprocess::qgis_get_output_specs(alg$algorithm[1])

  list(doc = build_fn_doc(alg, arguments, outputs),
       code = build_fn_code(alg, arguments, outputs$name[1]))
}

save_txt <- function(data){
  path <- tempfile(fileext = ".txt")
  readr::write_file(data, path)
  path
}
