##' QGIS Algorithm provided by SAGA Points thinning (saga:pointsthinning)
##'
##' @title QGIS algorithm Points thinning
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param RESOLUTION `number` - Resolution. A numeric value.
##' @param THINNED `vectorDestination` - Thinned Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * THINNED - outputVector - Thinned Points
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_pointsthinning <- function(POINTS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), RESOLUTION = qgisprocess::qgis_default_value(), THINNED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:pointsthinning",`POINTS` = POINTS, `FIELD` = FIELD, `RESOLUTION` = RESOLUTION, `THINNED` = THINNED,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "THINNED")
}
}