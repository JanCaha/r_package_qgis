##' QGIS Algorithm provided by SAGA Real surface area (saga:realsurfacearea)
##'
##' @title QGIS algorithm Real surface area
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param AREA `rasterDestination` - Surface Area. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputRaster - Surface Area
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_realsurfacearea <- function(DEM = qgisprocess:::qgis_default_value(), AREA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:realsurfacearea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:realsurfacearea", `DEM` = DEM, `AREA` = AREA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:realsurfacearea", `DEM` = DEM, `AREA` = AREA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AREA")
  }
}