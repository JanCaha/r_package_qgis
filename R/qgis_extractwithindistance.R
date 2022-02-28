##' QGIS Algorithm provided by QGIS (native c++) Extract within distance (native:extractwithindistance)
##'
##' @title QGIS algorithm Extract within distance
##'
##' @param INPUT `source` - Extract features from. Path to a vector layer.
##' @param REFERENCE `source` - By comparing to the features from. Path to a vector layer.
##' @param DISTANCE `distance` - Where the features are within. A numeric value.
##' @param OUTPUT `sink` - Extracted (location). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted (location)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractwithindistance <- function(INPUT = qgisprocess::qgis_default_value(), REFERENCE = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:extractwithindistance")

  output <- qgisprocess::qgis_run_algorithm("native:extractwithindistance", `INPUT` = INPUT, `REFERENCE` = REFERENCE, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}