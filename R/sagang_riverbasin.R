##' QGIS Algorithm provided by SAGA Next Gen Riverbasin (sagang:riverbasin). ---------------- Arguments ----------------  INPUT: DTM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INPUT2: HGGrid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INPUT3: statisches Entnahmeraster (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WCons: Anteilige Flaechenwasserentnahme 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression WCons2: Dynamische Flaechenwassernutzung... 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) ...anteilig aus den Flussrasterzellen 		- 1: (1) ...anteilig aus Rasterzellen der Teileinzugegebiete 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OUTPUT2: Grad 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT3: Direc 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT4: HGGrad 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT5: RivSpeed 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT6: Coordinates 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT7: BasinShare 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT8: statWUse 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OUTPUT9: NumInFlowCells 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer pCr: Hauptgerinne-Parameter pHG 	Default value:	0.0035 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression nCr: Hauptgerinne-Speicherkaskade nHG 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EnfVmax: Maximal Geschwindigkeit des Hauptgerinnes beruecksichtigen 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VTresh: Maximalgeschwindigkeit im Hauptgerinne in km/h 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Riverbasin
##'
##' @param INPUT `raster` - DTM. Path to a raster layer.
##' @param INPUT2 `raster` - HGGrid. Path to a raster layer.
##' @param INPUT3 `raster` - statisches Entnahmeraster. Path to a raster layer.
##' @param WCons `boolean` - Anteilige Flaechenwasserentnahme. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WCons2 `enum`  of `("(0) ...anteilig aus den Flussrasterzellen", "(1) ...anteilig aus Rasterzellen der Teileinzugegebiete")` - Dynamische Flaechenwassernutzung.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT2 `rasterDestination` - Grad. Path for new raster layer.
##' @param OUTPUT3 `rasterDestination` - Direc. Path for new raster layer.
##' @param OUTPUT4 `rasterDestination` - HGGrad. Path for new raster layer.
##' @param OUTPUT5 `rasterDestination` - RivSpeed. Path for new raster layer.
##' @param OUTPUT6 `rasterDestination` - Coordinates. Path for new raster layer.
##' @param OUTPUT7 `rasterDestination` - BasinShare. Path for new raster layer.
##' @param OUTPUT8 `rasterDestination` - statWUse. Path for new raster layer.
##' @param OUTPUT9 `rasterDestination` - NumInFlowCells. Path for new raster layer.
##' @param pCr `number` - Hauptgerinne-Parameter pHG. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param nCr `number` - Hauptgerinne-Speicherkaskade nHG. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EnfVmax `boolean` - Maximal Geschwindigkeit des Hauptgerinnes beruecksichtigen. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VTresh `number` - Maximalgeschwindigkeit im Hauptgerinne in km\code{/}h. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT2 - outputRaster - Grad
##' * OUTPUT3 - outputRaster - Direc
##' * OUTPUT4 - outputRaster - HGGrad
##' * OUTPUT5 - outputRaster - RivSpeed
##' * OUTPUT6 - outputRaster - Coordinates
##' * OUTPUT7 - outputRaster - BasinShare
##' * OUTPUT8 - outputRaster - statWUse
##' * OUTPUT9 - outputRaster - NumInFlowCells
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_riverbasin <- function(INPUT = qgisprocess:::qgis_default_value(), INPUT2 = qgisprocess:::qgis_default_value(), INPUT3 = qgisprocess:::qgis_default_value(), WCons = qgisprocess:::qgis_default_value(), WCons2 = qgisprocess:::qgis_default_value(), OUTPUT2 = qgisprocess:::qgis_default_value(), OUTPUT3 = qgisprocess:::qgis_default_value(), OUTPUT4 = qgisprocess:::qgis_default_value(), OUTPUT5 = qgisprocess:::qgis_default_value(), OUTPUT6 = qgisprocess:::qgis_default_value(), OUTPUT7 = qgisprocess:::qgis_default_value(), OUTPUT8 = qgisprocess:::qgis_default_value(), OUTPUT9 = qgisprocess:::qgis_default_value(), pCr = qgisprocess:::qgis_default_value(), nCr = qgisprocess:::qgis_default_value(), EnfVmax = qgisprocess:::qgis_default_value(), VTresh = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:riverbasin")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:riverbasin", `INPUT` = INPUT, `INPUT2` = INPUT2, `INPUT3` = INPUT3, `WCons` = WCons, `WCons2` = WCons2, `OUTPUT2` = OUTPUT2, `OUTPUT3` = OUTPUT3, `OUTPUT4` = OUTPUT4, `OUTPUT5` = OUTPUT5, `OUTPUT6` = OUTPUT6, `OUTPUT7` = OUTPUT7, `OUTPUT8` = OUTPUT8, `OUTPUT9` = OUTPUT9, `pCr` = pCr, `nCr` = nCr, `EnfVmax` = EnfVmax, `VTresh` = VTresh,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:riverbasin", `INPUT` = INPUT, `INPUT2` = INPUT2, `INPUT3` = INPUT3, `WCons` = WCons, `WCons2` = WCons2, `OUTPUT2` = OUTPUT2, `OUTPUT3` = OUTPUT3, `OUTPUT4` = OUTPUT4, `OUTPUT5` = OUTPUT5, `OUTPUT6` = OUTPUT6, `OUTPUT7` = OUTPUT7, `OUTPUT8` = OUTPUT8, `OUTPUT9` = OUTPUT9, `pCr` = pCr, `nCr` = nCr, `EnfVmax` = EnfVmax, `VTresh` = VTresh,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT2")
  }
}