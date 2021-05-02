character(0)

saga_functionfit <- function(SOURCE = qgisprocess::qgis_default_value(), YFIELD = qgisprocess::qgis_default_value(), USE_X = qgisprocess::qgis_default_value(), XFIELD = qgisprocess::qgis_default_value(), FORMEL = qgisprocess::qgis_default_value(), ITER = qgisprocess::qgis_default_value(), LAMDA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:functionfit")
  output <- qgisprocess::qgis_run_algorithm("saga:functionfit",`SOURCE` = SOURCE, `YFIELD` = YFIELD, `USE_X` = USE_X, `XFIELD` = XFIELD, `FORMEL` = FORMEL, `ITER` = ITER, `LAMDA` = LAMDA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}