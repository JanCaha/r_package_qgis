##' QGIS Algorithm provided by SAGA Contour lines (saga:contourlines)
##'
##' @title QGIS algorithm Contour lines
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param VERTEX `enum`  of `("[0] x,y", "[1] x,y,z")` - Vertex type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ZMIN `number` - Minimum Contour Value. A numeric value.
##' @param ZMAX `number` - Maximum Contour Value. A numeric value.
##' @param ZSTEP `number` - Equidistance. A numeric value.
##' @param CONTOUR `vectorDestination` - Contour Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTOUR - outputVector - Contour Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_contourlines <- function(GRID = qgisprocess::qgis_default_value(), VERTEX = qgisprocess::qgis_default_value(), ZMIN = qgisprocess::qgis_default_value(), ZMAX = qgisprocess::qgis_default_value(), ZSTEP = qgisprocess::qgis_default_value(), CONTOUR = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:contourlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:contourlines", `GRID` = GRID, `VERTEX` = VERTEX, `ZMIN` = ZMIN, `ZMAX` = ZMAX, `ZSTEP` = ZSTEP, `CONTOUR` = CONTOUR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:contourlines", `GRID` = GRID, `VERTEX` = VERTEX, `ZMIN` = ZMIN, `ZMAX` = ZMAX, `ZSTEP` = ZSTEP, `CONTOUR` = CONTOUR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONTOUR")
  }
}