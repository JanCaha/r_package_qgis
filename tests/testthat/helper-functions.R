get_alg_help <- function(alg_name){

  source(here::here("build-package", "functions_build_code_and_doc.R"))

  algs <- qgisprocess::qgis_algorithms() %>%
    dplyr::select(!c(tags, supported_output_raster_extensions, supported_output_table_extensions, supported_output_vector_extensions))

  alg <- algs %>%
    dplyr::filter(algorithm_id == alg_name)

  arguments <- qgisprocess::qgis_arguments(alg$algorithm[1]) %>%
    dplyr::filter(!is.na(name))
  outputs <- qgisprocess::qgis_outputs(alg$algorithm[1])

  list(doc = build_fn_doc(alg, arguments, outputs),
       code = build_fn_code(alg, arguments, outputs$name[1]))
}

save_txt <- function(data){
  path <- tempfile(fileext = ".txt")
  readr::write_file(data, path)
  path
}
