##' QGIS Algorithm provided by SAGA Edge contamination (saga:edgecontamination)
##'
##' @title QGIS algorithm Edge contamination
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CONTAMINATION `rasterDestination` - Edge Contamination. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CONTAMINATION - outputRaster - Edge Contamination
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_edgecontamination <- function(DEM = qgisprocess::qgis_default_value(), CONTAMINATION = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:edgecontamination")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:edgecontamination", `DEM` = DEM, `CONTAMINATION` = CONTAMINATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:edgecontamination", `DEM` = DEM, `CONTAMINATION` = CONTAMINATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONTAMINATION")
  }
}