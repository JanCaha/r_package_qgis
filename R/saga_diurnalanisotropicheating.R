##' QGIS Algorithm provided by SAGA Diurnal anisotropic heating (saga:diurnalanisotropicheating)
##'
##' @title QGIS algorithm Diurnal anisotropic heating
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param ALPHA_MAX `number` - Alpha Max (Degree). A numeric value.
##' @param DAH `rasterDestination` - Diurnal Anisotropic Heating. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DAH - outputRaster - Diurnal Anisotropic Heating
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_diurnalanisotropicheating <- function(DEM = qgisprocess:::qgis_default_value(), ALPHA_MAX = qgisprocess:::qgis_default_value(), DAH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:diurnalanisotropicheating")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:diurnalanisotropicheating", `DEM` = DEM, `ALPHA_MAX` = ALPHA_MAX, `DAH` = DAH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:diurnalanisotropicheating", `DEM` = DEM, `ALPHA_MAX` = ALPHA_MAX, `DAH` = DAH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DAH")
  }
}