##' QGIS Algorithm provided by SAGA Next Gen Split table/shapes by attribute (sagang:splittableshapesbyattribute). ---------------- Arguments ----------------  TABLE: Table / Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CUTS: Cuts 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Split table/shapes by attribute
##'
##' @param TABLE `source` - Table \code{/} Shapes. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param CUTS `vectorDestination` - Cuts. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CUTS - outputVector - Cuts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splittableshapesbyattribute <- function(TABLE = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), CUTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splittableshapesbyattribute")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splittableshapesbyattribute", `TABLE` = TABLE, `FIELD` = FIELD, `CUTS` = CUTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splittableshapesbyattribute", `TABLE` = TABLE, `FIELD` = FIELD, `CUTS` = CUTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CUTS")
  }
}