##' QGIS Algorithm provided by SAGA Watershed segmentation (vigra) (saga:watershedsegmentationvigra)
##'
##' @title QGIS algorithm Watershed segmentation (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Segmentation. Path for new raster layer.
##' @param SCALE `number` - Width of gradient filter. A numeric value.
##' @param RGB `boolean` - RGB coded data. 1 for true/yes. 0 for false/no.
##' @param EDGES `boolean` - Edges. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Segmentation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_watershedsegmentationvigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), RGB = qgisprocess::qgis_default_value(), EDGES = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:watershedsegmentationvigra")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:watershedsegmentationvigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SCALE` = SCALE, `RGB` = RGB, `EDGES` = EDGES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:watershedsegmentationvigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SCALE` = SCALE, `RGB` = RGB, `EDGES` = EDGES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}