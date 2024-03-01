##' QGIS Algorithm provided by SAGA Next Gen Export esri arc/info grid (sagang:exportesriarcinfogrid). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FORMAT: Format 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) binary 		- 1: (1) ASCII 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' GEOREF: Geo-Reference 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) corner 		- 1: (1) center 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PREC: ASCII Precision 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DECSEP: ASCII Decimal Separator 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) point (.) 		- 1: (1) comma (,) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Export esri arc/info grid
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param FILE `file` - File. Path to a file.
##' @param FORMAT `enum`  of `("(0) binary", "(1) ASCII")` - Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GEOREF `enum`  of `("(0) corner", "(1) center")` - Geo-Reference. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PREC `number` - ASCII Precision. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DECSEP `enum`  of `("(0) point (.)", "(1) comma (,)")` - ASCII Decimal Separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_exportesriarcinfogrid <- function(GRID = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(), GEOREF = qgisprocess:::qgis_default_value(), PREC = qgisprocess:::qgis_default_value(), DECSEP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportesriarcinfogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportesriarcinfogrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `GEOREF` = GEOREF, `PREC` = PREC, `DECSEP` = DECSEP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportesriarcinfogrid", `GRID` = GRID, `FILE` = FILE, `FORMAT` = FORMAT, `GEOREF` = GEOREF, `PREC` = PREC, `DECSEP` = DECSEP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}