check_algorithm_necessities <- function(alg_name){

  qgisprocess::assert_qgis()

  qgisprocess::assert_qgis_algorithm(alg_name)
}
