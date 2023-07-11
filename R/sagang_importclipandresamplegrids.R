##' QGIS Algorithm provided by SAGA Next Gen Import, clip and resample grids (sagang:importclipandresamplegrids). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILES: Image Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file KEEP_TYPE: Preserve Data Type 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA: User Defined No-Data Value 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA_VAL: No-Data Value 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLIP: Region of Interest (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESAMPLE: Resample 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CELLSIZE: Cell Size 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import, clip and resample grids
##'
##' @param GRIDS `rasterDestination` - Grids. Path for new raster layer.
##' @param FILES `file` - Image Files. Path to a file.
##' @param KEEP_TYPE `boolean` - Preserve Data Type. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA `boolean` - User Defined No-Data Value. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA_VAL `number` - No-Data Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CLIP `source` - Region of Interest. Path to a vector layer.
##' @param RESAMPLE `boolean` - Resample. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CELLSIZE `number` - Cell Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_importclipandresamplegrids <- function(GRIDS = qgisprocess:::qgis_default_value(), FILES = qgisprocess:::qgis_default_value(), KEEP_TYPE = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), NODATA_VAL = qgisprocess:::qgis_default_value(), CLIP = qgisprocess:::qgis_default_value(), RESAMPLE = qgisprocess:::qgis_default_value(), CELLSIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importclipandresamplegrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importclipandresamplegrids", `GRIDS` = GRIDS, `FILES` = FILES, `KEEP_TYPE` = KEEP_TYPE, `NODATA` = NODATA, `NODATA_VAL` = NODATA_VAL, `CLIP` = CLIP, `RESAMPLE` = RESAMPLE, `CELLSIZE` = CELLSIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importclipandresamplegrids", `GRIDS` = GRIDS, `FILES` = FILES, `KEEP_TYPE` = KEEP_TYPE, `NODATA` = NODATA, `NODATA_VAL` = NODATA_VAL, `CLIP` = CLIP, `RESAMPLE` = RESAMPLE, `CELLSIZE` = CELLSIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS")
  }
}