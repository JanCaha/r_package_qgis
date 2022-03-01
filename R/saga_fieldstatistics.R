##' QGIS Algorithm provided by SAGA Field statistics (saga:fieldstatistics)
##'
##' @title QGIS algorithm Field statistics
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param FIELDS `field` - Attributes. The name of an existing field. ; delimited list of existing field names.
##' @param STATISTICS `vectorDestination` - Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * STATISTICS - outputVector - Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fieldstatistics <- function(TABLE = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), STATISTICS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fieldstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fieldstatistics", `TABLE` = TABLE, `FIELDS` = FIELDS, `STATISTICS` = STATISTICS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fieldstatistics", `TABLE` = TABLE, `FIELDS` = FIELDS, `STATISTICS` = STATISTICS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "STATISTICS")
  }
}