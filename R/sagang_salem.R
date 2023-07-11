##' QGIS Algorithm provided by SAGA Next Gen Salem (sagang:salem). ---------------- Arguments ----------------  SURFACE_T0: Initial Surface Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer REGOLITH_T0: Initial Regolith Thickness (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer REGOLITH_T0_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ALLOCHTHONE: Allochthone Input (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ALLOCHTHONE_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SURFACE: Surface Elevation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REGOLITH: Regolith Thickness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DIFFERENCE: Difference 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME_START: Start (Years BP) 	Default value:	50000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STOP: Stop (Years BP) 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STEP: Step (Years) 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIFFUSIVE_KD: Diffusivity Coefficient Kd (m^2/a) 	Default value:	0.01 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIFFUSIVE_NEIGHBOURS: Neighbourhood 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Salem
##'
##' @param SURFACE_T0 `raster` - Initial Surface Elevation. Path to a raster layer.
##' @param REGOLITH_T0 `raster` - Initial Regolith Thickness. Path to a raster layer.
##' @param REGOLITH_T0_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALLOCHTHONE `raster` - Allochthone Input. Path to a raster layer.
##' @param ALLOCHTHONE_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SURFACE `rasterDestination` - Surface Elevation. Path for new raster layer.
##' @param REGOLITH `rasterDestination` - Regolith Thickness. Path for new raster layer.
##' @param DIFFERENCE `rasterDestination` - Difference. Path for new raster layer.
##' @param TIME_START `number` - Start (Years BP). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STOP `number` - Stop (Years BP). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STEP `number` - Step (Years). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIFFUSIVE_KD `number` - Diffusivity Coefficient Kd (m^2\code{/}a). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIFFUSIVE_NEIGHBOURS `enum`  of `("(0) Neumann", "(1) Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DIFFERENCE - outputRaster - Difference
##' * REGOLITH - outputRaster - Regolith Thickness
##' * SURFACE - outputRaster - Surface Elevation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_salem <- function(SURFACE_T0 = qgisprocess:::qgis_default_value(), REGOLITH_T0 = qgisprocess:::qgis_default_value(), REGOLITH_T0_DEFAULT = qgisprocess:::qgis_default_value(), ALLOCHTHONE = qgisprocess:::qgis_default_value(), ALLOCHTHONE_DEFAULT = qgisprocess:::qgis_default_value(), SURFACE = qgisprocess:::qgis_default_value(), REGOLITH = qgisprocess:::qgis_default_value(), DIFFERENCE = qgisprocess:::qgis_default_value(), TIME_START = qgisprocess:::qgis_default_value(), TIME_STOP = qgisprocess:::qgis_default_value(), TIME_STEP = qgisprocess:::qgis_default_value(), DIFFUSIVE_KD = qgisprocess:::qgis_default_value(), DIFFUSIVE_NEIGHBOURS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:salem")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:salem", `SURFACE_T0` = SURFACE_T0, `REGOLITH_T0` = REGOLITH_T0, `REGOLITH_T0_DEFAULT` = REGOLITH_T0_DEFAULT, `ALLOCHTHONE` = ALLOCHTHONE, `ALLOCHTHONE_DEFAULT` = ALLOCHTHONE_DEFAULT, `SURFACE` = SURFACE, `REGOLITH` = REGOLITH, `DIFFERENCE` = DIFFERENCE, `TIME_START` = TIME_START, `TIME_STOP` = TIME_STOP, `TIME_STEP` = TIME_STEP, `DIFFUSIVE_KD` = DIFFUSIVE_KD, `DIFFUSIVE_NEIGHBOURS` = DIFFUSIVE_NEIGHBOURS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:salem", `SURFACE_T0` = SURFACE_T0, `REGOLITH_T0` = REGOLITH_T0, `REGOLITH_T0_DEFAULT` = REGOLITH_T0_DEFAULT, `ALLOCHTHONE` = ALLOCHTHONE, `ALLOCHTHONE_DEFAULT` = ALLOCHTHONE_DEFAULT, `SURFACE` = SURFACE, `REGOLITH` = REGOLITH, `DIFFERENCE` = DIFFERENCE, `TIME_START` = TIME_START, `TIME_STOP` = TIME_STOP, `TIME_STEP` = TIME_STEP, `DIFFUSIVE_KD` = DIFFUSIVE_KD, `DIFFUSIVE_NEIGHBOURS` = DIFFUSIVE_NEIGHBOURS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DIFFERENCE")
  }
}