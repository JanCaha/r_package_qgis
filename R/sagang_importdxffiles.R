##' QGIS Algorithm provided by SAGA Next Gen Import dxf files (sagang:importdxffiles). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TABLES: Tables 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file FILTER: Import Filter 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) all entities 		- 1: (1) only entities with layer definition 		- 2: (2) only entities without layer definition 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DCIRCLE: Circle Point Distance (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import dxf files
##'
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param TABLES `vectorDestination` - Tables. Path for new vector layer.
##' @param FILE `file` - File. Path to a file.
##' @param FILTER `enum`  of `("(0) all entities", "(1) only entities with layer definition", "(2) only entities without layer definition")` - Import Filter. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DCIRCLE `number` - Circle Point Distance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##' * TABLES - outputVector - Tables
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importdxffiles <- function(SHAPES = qgisprocess:::qgis_default_value(), TABLES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FILTER = qgisprocess:::qgis_default_value(), DCIRCLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importdxffiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importdxffiles", `SHAPES` = SHAPES, `TABLES` = TABLES, `FILE` = FILE, `FILTER` = FILTER, `DCIRCLE` = DCIRCLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importdxffiles", `SHAPES` = SHAPES, `TABLES` = TABLES, `FILE` = FILE, `FILTER` = FILTER, `DCIRCLE` = DCIRCLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}