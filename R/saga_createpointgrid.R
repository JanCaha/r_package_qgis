##' QGIS Algorithm provided by SAGA Create point grid (saga:createpointgrid)
##'
##' @title QGIS algorithm Create point grid
##'
##' @param POINTS `vectorDestination` - Point Grid. Path for new vector layer.
##' @param X_EXTENT_MIN `number` - X-Extent (Min). A numeric value.
##' @param X_EXTENT_MAX `number` - X-Extent (Max). A numeric value.
##' @param Y_EXTENT_MIN `number` - Y-Extent (Min). A numeric value.
##' @param Y_EXTENT_MAX `number` - Y-Extent (Max). A numeric value.
##' @param DIST `number` - Distance. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Point Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_createpointgrid <- function(POINTS = qgisprocess::qgis_default_value(), X_EXTENT_MIN = qgisprocess::qgis_default_value(), X_EXTENT_MAX = qgisprocess::qgis_default_value(), Y_EXTENT_MIN = qgisprocess::qgis_default_value(), Y_EXTENT_MAX = qgisprocess::qgis_default_value(), DIST = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:createpointgrid")

  output <- qgisprocess::qgis_run_algorithm("saga:createpointgrid", `POINTS` = POINTS, `X_EXTENT_MIN` = X_EXTENT_MIN, `X_EXTENT_MAX` = X_EXTENT_MAX, `Y_EXTENT_MIN` = Y_EXTENT_MIN, `Y_EXTENT_MAX` = Y_EXTENT_MAX, `DIST` = DIST,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}