##' QGIS Algorithm provided by QGIS Distance to nearest hub (points) (qgis:distancetonearesthubpoints)
##'
##' @title QGIS algorithm Distance to nearest hub (points)
##'
##' @param INPUT `source` - Source points layer. Path to a vector layer.
##' @param HUBS `source` - Destination hubs layer. Path to a vector layer.
##' @param FIELD `field` - Hub layer name attribute. The name of an existing field. ; delimited list of existing field names.
##' @param UNIT `enum`  of `("Meters", "Feet", "Miles", "Kilometers", "Layer units")` - Measurement unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Hub distance. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Hub distance
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_distancetonearesthubpoints <- function(INPUT = qgisprocess::qgis_default_value(), HUBS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), UNIT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:distancetonearesthubpoints")
  output <- qgisprocess::qgis_run_algorithm("qgis:distancetonearesthubpoints",`INPUT` = INPUT, `HUBS` = HUBS, `FIELD` = FIELD, `UNIT` = UNIT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}