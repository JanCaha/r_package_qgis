##' QGIS Algorithm provided by SAGA Next Gen Export surfer grid (sagang:exportsurfergrid). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMAT: Format 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) binary 		- 1: (1) ASCII 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NODATA: Use Surfer's No-Data Value 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Export surfer grid
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param FILE `file` - File. Path to a file.
##' @param FORMAT `enum`  of `("(0) binary", "(1) ASCII")` - Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATA `boolean` - Use Surfer's No-Data Value. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_exportsurfergrid <- function(GRID = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportsurfergrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportsurfergrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `NODATA` = NODATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportsurfergrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `NODATA` = NODATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}