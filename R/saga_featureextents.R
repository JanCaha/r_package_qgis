##' QGIS Algorithm provided by SAGA Feature extents (saga:featureextents)
##'
##' @title QGIS algorithm Feature extents
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param OUTPUT `enum`  of `("[0] all shapes", "[1] each shape", "[2] each shape's part")` - Get Extent for. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENTS `vectorDestination` - Extents. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * EXTENTS - outputVector - Extents
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_featureextents <- function(SHAPES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), EXTENTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:featureextents")

  output <- qgisprocess::qgis_run_algorithm("saga:featureextents", `SHAPES` = SHAPES, `OUTPUT` = OUTPUT, `EXTENTS` = EXTENTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EXTENTS")
  }
}