##' QGIS Algorithm provided by SAGA Point distances (saga:pointdistances)
##'
##' @title QGIS algorithm Point distances
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ID_POINTS `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param NEAR `source` - Near Points. Path to a vector layer.
##' @param ID_NEAR `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param FORMAT `enum`  of `("[0] complete input times near points matrix", "[1] each pair with a single record")` - Output Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MAX_DIST `number` - Maximum Distance. A numeric value.
##' @param DISTANCES `vectorDestination` - Distances. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCES - outputVector - Distances
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_pointdistances <- function(POINTS = qgisprocess::qgis_default_value(), ID_POINTS = qgisprocess::qgis_default_value(), NEAR = qgisprocess::qgis_default_value(), ID_NEAR = qgisprocess::qgis_default_value(), FORMAT = qgisprocess::qgis_default_value(), MAX_DIST = qgisprocess::qgis_default_value(), DISTANCES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:pointdistances",`POINTS` = POINTS, `ID_POINTS` = ID_POINTS, `NEAR` = NEAR, `ID_NEAR` = ID_NEAR, `FORMAT` = FORMAT, `MAX_DIST` = MAX_DIST, `DISTANCES` = DISTANCES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCES")
  }
}