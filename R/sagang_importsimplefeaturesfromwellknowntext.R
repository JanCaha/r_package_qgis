##' QGIS Algorithm provided by SAGA Next Gen Import simple features from well known text (sagang:importsimplefeaturesfromwellknowntext). ---------------- Arguments ----------------  SHAPES: WKT Import 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file WKT: WKT String 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import simple features from well known text
##'
##' @param SHAPES `vectorDestination` - WKT Import. Path for new vector layer.
##' @param FILE `file` - File. Path to a file.
##' @param WKT `string` - WKT String. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - WKT Import
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importsimplefeaturesfromwellknowntext <- function(SHAPES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), WKT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importsimplefeaturesfromwellknowntext")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importsimplefeaturesfromwellknowntext", `SHAPES` = SHAPES, `FILE` = FILE, `WKT` = WKT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importsimplefeaturesfromwellknowntext", `SHAPES` = SHAPES, `FILE` = FILE, `WKT` = WKT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHAPES")
  }
}