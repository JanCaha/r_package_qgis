##' QGIS Algorithm provided by SAGA Next Gen Zonal raster statistics (sagang:zonalrasterstatistics). ---------------- Arguments ----------------  ZONES: Zone Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CATLIST: Categorical Grids (optional) 	Argument type:	multilayer STATLIST: Grids to analyse (optional) 	Argument type:	multilayer ASPECT: Aspect (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTTAB: Zonal Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SHORTNAMES: Short Field Names 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Zonal raster statistics
##'
##' @param ZONES `raster` - Zone Grid. Path to a raster layer.
##' @param CATLIST `multilayer` - Categorical Grids. .
##' @param STATLIST `multilayer` - Grids to analyse. .
##' @param ASPECT `raster` - Aspect. Path to a raster layer.
##' @param OUTTAB `vectorDestination` - Zonal Statistics. Path for new vector layer.
##' @param SHORTNAMES `boolean` - Short Field Names. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTTAB - outputVector - Zonal Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_zonalrasterstatistics <- function(ZONES = qgisprocess:::qgis_default_value(), CATLIST = qgisprocess:::qgis_default_value(), STATLIST = qgisprocess:::qgis_default_value(), ASPECT = qgisprocess:::qgis_default_value(), OUTTAB = qgisprocess:::qgis_default_value(), SHORTNAMES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:zonalrasterstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:zonalrasterstatistics", `ZONES` = ZONES, `CATLIST` = CATLIST, `STATLIST` = STATLIST, `ASPECT` = ASPECT, `OUTTAB` = OUTTAB, `SHORTNAMES` = SHORTNAMES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:zonalrasterstatistics", `ZONES` = ZONES, `CATLIST` = CATLIST, `STATLIST` = STATLIST, `ASPECT` = ASPECT, `OUTTAB` = OUTTAB, `SHORTNAMES` = SHORTNAMES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTTAB")
  }
}