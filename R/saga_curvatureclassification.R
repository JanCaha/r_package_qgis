##' QGIS Algorithm provided by SAGA Curvature classification (saga:curvatureclassification)
##'
##' @title QGIS algorithm Curvature classification
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold for plane. A numeric value.
##' @param CLASS `rasterDestination` - Curvature Classification. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CLASS - outputRaster - Curvature Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_curvatureclassification <- function(DEM = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), CLASS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:curvatureclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:curvatureclassification", `DEM` = DEM, `THRESHOLD` = THRESHOLD, `CLASS` = CLASS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:curvatureclassification", `DEM` = DEM, `THRESHOLD` = THRESHOLD, `CLASS` = CLASS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CLASS")
  }
}