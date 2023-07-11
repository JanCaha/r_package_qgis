##' QGIS Algorithm provided by SAGA Next Gen Mass balance index (sagang:massbalanceindex). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HREL: Vertical Distance to Channel Network (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MBI: Mass Balance Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TSLOPE: T Slope 	Default value:	15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TCURVE: T Curvature 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THREL: T Vertical Distance to Channel Network 	Default value:	15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Mass balance index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param HREL `raster` - Vertical Distance to Channel Network. Path to a raster layer.
##' @param MBI `rasterDestination` - Mass Balance Index. Path for new raster layer.
##' @param TSLOPE `number` - T Slope. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TCURVE `number` - T Curvature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THREL `number` - T Vertical Distance to Channel Network. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

sagang_massbalanceindex <- function(DEM = qgisprocess:::qgis_default_value(), HREL = qgisprocess:::qgis_default_value(), MBI = qgisprocess:::qgis_default_value(), TSLOPE = qgisprocess:::qgis_default_value(), TCURVE = qgisprocess:::qgis_default_value(), THREL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:massbalanceindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:massbalanceindex", `DEM` = DEM, `HREL` = HREL, `MBI` = MBI, `TSLOPE` = TSLOPE, `TCURVE` = TCURVE, `THREL` = THREL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:massbalanceindex", `DEM` = DEM, `HREL` = HREL, `MBI` = MBI, `TSLOPE` = TSLOPE, `TCURVE` = TCURVE, `THREL` = THREL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MBI")
  }
}