##' QGIS Algorithm provided by SAGA Strahler order (saga:strahlerorder)
##'
##' @title QGIS algorithm Strahler order
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param STRAHLER `rasterDestination` - Strahler Order. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * STRAHLER - outputRaster - Strahler Order
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_strahlerorder <- function(DEM = qgisprocess::qgis_default_value(), STRAHLER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:strahlerorder")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:strahlerorder", `DEM` = DEM, `STRAHLER` = STRAHLER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:strahlerorder", `DEM` = DEM, `STRAHLER` = STRAHLER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "STRAHLER")
  }
}