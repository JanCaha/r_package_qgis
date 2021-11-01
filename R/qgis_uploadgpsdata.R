character(0)

qgis_uploadgpsdata <- function(INPUT = qgisprocess::qgis_default_value(), DEVICE = qgisprocess::qgis_default_value(), PORT = qgisprocess::qgis_default_value(), FEATURE_TYPE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:uploadgpsdata")

  output <- qgisprocess::qgis_run_algorithm("native:uploadgpsdata", `INPUT` = INPUT, `DEVICE` = DEVICE, `PORT` = PORT, `FEATURE_TYPE` = FEATURE_TYPE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}