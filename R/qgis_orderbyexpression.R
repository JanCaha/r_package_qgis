##' QGIS Algorithm provided by QGIS (native c++) Order by expression (native:orderbyexpression). This algorithm sorts a vector layer according to an expression. Be careful, it might not work as expected with some providers, the order might not be kept every time.  For help with QGIS expression functions, see the inbuilt help for specific functions which is available in the expression builder.
##'
##' @title QGIS algorithm - Order by expression
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXPRESSION `expression` - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param ASCENDING `boolean` - Sort ascending. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NULLS_FIRST `boolean` - Sort nulls first. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Ordered. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Ordered
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_orderbyexpression <- function(INPUT = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), ASCENDING = qgisprocess:::qgis_default_value(), NULLS_FIRST = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:orderbyexpression")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:orderbyexpression", `INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `ASCENDING` = ASCENDING, `NULLS_FIRST` = NULLS_FIRST, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:orderbyexpression", `INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `ASCENDING` = ASCENDING, `NULLS_FIRST` = NULLS_FIRST, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}