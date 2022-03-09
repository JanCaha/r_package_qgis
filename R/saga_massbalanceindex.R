##' QGIS Algorithm provided by SAGA Mass balance index (saga:massbalanceindex)
##'
##' @title QGIS algorithm Mass balance index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param HREL `raster` - Vertical Distance to Channel Network. Path to a raster layer.
##' @param TSLOPE `number` - T Slope. A numeric value.
##' @param TCURVE `number` - T Curvature. A numeric value.
##' @param THREL `number` - T Vertical Distance to Channel Network. A numeric value.
##' @param MBI `rasterDestination` - Mass Balance Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MBI - outputRaster - Mass Balance Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_massbalanceindex <- function(DEM = qgisprocess::qgis_default_value(), HREL = qgisprocess::qgis_default_value(), TSLOPE = qgisprocess::qgis_default_value(), TCURVE = qgisprocess::qgis_default_value(), THREL = qgisprocess::qgis_default_value(), MBI = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:massbalanceindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:massbalanceindex", `DEM` = DEM, `HREL` = HREL, `TSLOPE` = TSLOPE, `TCURVE` = TCURVE, `THREL` = THREL, `MBI` = MBI,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:massbalanceindex", `DEM` = DEM, `HREL` = HREL, `TSLOPE` = TSLOPE, `TCURVE` = TCURVE, `THREL` = THREL, `MBI` = MBI,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MBI")
  }
}