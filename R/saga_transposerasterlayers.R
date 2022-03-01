##' QGIS Algorithm provided by SAGA Transpose raster layers (saga:transposerasterlayers)
##'
##' @title QGIS algorithm Transpose raster layers
##'
##' @param GRIDS `raster` - Input Grid. Path to a raster layer.
##' @param MIRROR_X `boolean` - Mirror Horizontally. 1 for true/yes. 0 for false/no.
##' @param MIRROR_Y `boolean` - Mirror Vertically. 1 for true/yes. 0 for false/no.
##' @param TRANSPOSED `rasterDestination` - Transposed Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRANSPOSED - outputRaster - Transposed Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_transposerasterlayers <- function(GRIDS = qgisprocess::qgis_default_value(), MIRROR_X = qgisprocess::qgis_default_value(), MIRROR_Y = qgisprocess::qgis_default_value(), TRANSPOSED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:transposerasterlayers")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:transposerasterlayers", `GRIDS` = GRIDS, `MIRROR_X` = MIRROR_X, `MIRROR_Y` = MIRROR_Y, `TRANSPOSED` = TRANSPOSED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:transposerasterlayers", `GRIDS` = GRIDS, `MIRROR_X` = MIRROR_X, `MIRROR_Y` = MIRROR_Y, `TRANSPOSED` = TRANSPOSED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TRANSPOSED")
  }
}