##' QGIS Algorithm provided by QGIS Box plot (qgis:boxplot)
##'
##' @title QGIS algorithm Box plot
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param NAME_FIELD `field` - Category name field. The name of an existing field. ; delimited list of existing field names.
##' @param VALUE_FIELD `field` - Value field. The name of an existing field. ; delimited list of existing field names.
##' @param MSD `enum`  of `("Show Mean", "Show Standard Deviation", "Don't show Mean and Standard Deviation")` - Additional Statistic Lines. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `fileDestination` - Box plot. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Box plot
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_boxplot <- function(INPUT = qgisprocess:::qgis_default_value(), NAME_FIELD = qgisprocess:::qgis_default_value(), VALUE_FIELD = qgisprocess:::qgis_default_value(), MSD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:boxplot")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:boxplot", `INPUT` = INPUT, `NAME_FIELD` = NAME_FIELD, `VALUE_FIELD` = VALUE_FIELD, `MSD` = MSD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:boxplot", `INPUT` = INPUT, `NAME_FIELD` = NAME_FIELD, `VALUE_FIELD` = VALUE_FIELD, `MSD` = MSD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}