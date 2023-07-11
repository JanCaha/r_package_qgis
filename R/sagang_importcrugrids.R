##' QGIS Algorithm provided by SAGA Next Gen Import cru grids (sagang:importcrugrids). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file SHIFT: Shift 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import cru grids
##'
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param FILE `file` - File. Path to a file.
##' @param SHIFT `boolean` - Shift. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS - outputRaster - Grids
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importcrugrids <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), SHIFT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importcrugrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importcrugrids", `GRIDS` = GRIDS, `FILE` = FILE, `SHIFT` = SHIFT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importcrugrids", `GRIDS` = GRIDS, `FILE` = FILE, `SHIFT` = SHIFT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}