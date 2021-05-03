character(0)

saga_multiplelinearregressionanalysis <- function(TABLE = qgisprocess::qgis_default_value(), RESULTS = qgisprocess::qgis_default_value(), DEPENDENT = qgisprocess::qgis_default_value(), INFO_COEFF = qgisprocess::qgis_default_value(), INFO_MODEL = qgisprocess::qgis_default_value(), INFO_STEPS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), P_VALUE = qgisprocess::qgis_default_value(), CROSSVAL = qgisprocess::qgis_default_value(), CROSSVAL_K = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:multiplelinearregressionanalysis")

  output <- qgisprocess::qgis_run_algorithm("saga:multiplelinearregressionanalysis", `TABLE` = TABLE, `RESULTS` = RESULTS, `DEPENDENT` = DEPENDENT, `INFO_COEFF` = INFO_COEFF, `INFO_MODEL` = INFO_MODEL, `INFO_STEPS` = INFO_STEPS, `METHOD` = METHOD, `P_VALUE` = P_VALUE, `CROSSVAL` = CROSSVAL, `CROSSVAL_K` = CROSSVAL_K,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}