##' QGIS Algorithm provided by SAGA Flow width and specific catchment area (saga:flowwidthandspecificcatchmentarea)
##'
##' @title QGIS algorithm Flow width and specific catchment area
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param TCA `raster` - Total Catchment Area (TCA). Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Multiple Flow Direction (Quinn et al. 1991)", "[2] Aspect")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WIDTH `rasterDestination` - Flow Width. Path for new raster layer.
##' @param SCA `rasterDestination` - Specific Catchment Area (SCA). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SCA - outputRaster - Specific Catchment Area (SCA)
##' * WIDTH - outputRaster - Flow Width
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_flowwidthandspecificcatchmentarea <- function(DEM = qgisprocess::qgis_default_value(), TCA = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), WIDTH = qgisprocess::qgis_default_value(), SCA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:flowwidthandspecificcatchmentarea")

  output <- qgisprocess::qgis_run_algorithm("saga:flowwidthandspecificcatchmentarea", `DEM` = DEM, `TCA` = TCA, `METHOD` = METHOD, `WIDTH` = WIDTH, `SCA` = SCA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SCA")
  }
}