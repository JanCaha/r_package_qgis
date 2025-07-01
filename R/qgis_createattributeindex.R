##' QGIS Algorithm provided by QGIS (native c++) Create attribute index (native:createattributeindex). Creates an index to speed up queries made against a field in a table. This algorithm creates an index to speed up queries made against a field in a table. Support for index creation is dependent on the layer's data provider and the field type.
##'
##' @title QGIS algorithm - Create attribute index
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Attribute to index. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Indexed layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_createattributeindex <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:createattributeindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:createattributeindex", `INPUT` = INPUT, `FIELD` = FIELD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:createattributeindex", `INPUT` = INPUT, `FIELD` = FIELD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}