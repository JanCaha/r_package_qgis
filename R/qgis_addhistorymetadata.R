##' QGIS Algorithm provided by QGIS (native c++) Add history metadata (native:addhistorymetadata). Adds a new history entry to the layer's metadata. This algorithm adds a new history entry to the layer's metadata.
##'
##' @title QGIS algorithm - Add history metadata
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param HISTORY `string` - History entry. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Updated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_addhistorymetadata <- function(INPUT = qgisprocess:::qgis_default_value(), HISTORY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:addhistorymetadata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:addhistorymetadata", `INPUT` = INPUT, `HISTORY` = HISTORY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:addhistorymetadata", `INPUT` = INPUT, `HISTORY` = HISTORY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}