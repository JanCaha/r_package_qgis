##' QGIS Algorithm provided by SAGA Next Gen Diffusive hillslope evolution (adi) (sagang:diffusivehillslopeevolutionadi). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHANNELS: Channel Mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MODEL: Modelled Elevation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFF: Elevation Difference 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer UPDATE: Update 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KAPPA: Diffusivity (m2 / kyr) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DURATION: Simulation Time (kyr) 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIMESTEP: Time Step 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) user defined 		- 1: (1) automatically 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DTIME: Time Step (kyr) 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Diffusive hillslope evolution (adi)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Mask. Path to a raster layer.
##' @param MODEL `rasterDestination` - Modelled Elevation. Path for new raster layer.
##' @param DIFF `rasterDestination` - Elevation Difference. Path for new raster layer.
##' @param UPDATE `boolean` - Update. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KAPPA `number` - Diffusivity (m2 \code{/} kyr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DURATION `number` - Simulation Time (kyr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIMESTEP `enum`  of `("(0) user defined", "(1) automatically")` - Time Step. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DTIME `number` - Time Step (kyr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFF - outputRaster - Elevation Difference
##' * MODEL - outputRaster - Modelled Elevation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_diffusivehillslopeevolutionadi <- function(DEM = qgisprocess:::qgis_default_value(), CHANNELS = qgisprocess:::qgis_default_value(), MODEL = qgisprocess:::qgis_default_value(), DIFF = qgisprocess:::qgis_default_value(), UPDATE = qgisprocess:::qgis_default_value(), KAPPA = qgisprocess:::qgis_default_value(), DURATION = qgisprocess:::qgis_default_value(), TIMESTEP = qgisprocess:::qgis_default_value(), DTIME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:diffusivehillslopeevolutionadi")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:diffusivehillslopeevolutionadi", `DEM` = DEM, `CHANNELS` = CHANNELS, `MODEL` = MODEL, `DIFF` = DIFF, `UPDATE` = UPDATE, `KAPPA` = KAPPA, `DURATION` = DURATION, `TIMESTEP` = TIMESTEP, `DTIME` = DTIME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:diffusivehillslopeevolutionadi", `DEM` = DEM, `CHANNELS` = CHANNELS, `MODEL` = MODEL, `DIFF` = DIFF, `UPDATE` = UPDATE, `KAPPA` = KAPPA, `DURATION` = DURATION, `TIMESTEP` = TIMESTEP, `DTIME` = DTIME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFF")
  }
}