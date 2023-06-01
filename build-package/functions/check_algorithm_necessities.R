check_algorithm_necessities <- function(alg_name){

  qgisprocess:::assert_qgis()

  provider <- stringr::str_split(alg_name, ":", simplify = TRUE)[1]

  if (!qgisprocess::qgis_has_provider(provider)){
    stop(glue::glue("Error: Can not find specified provider `{provider}` in local QGIS installation."))
  }

  qgisprocess:::assert_qgis_algorithm(alg_name)

}
