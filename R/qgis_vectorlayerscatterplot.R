##' QGIS Algorithm provided by QGIS Vector layer scatterplot (qgis:vectorlayerscatterplot). Creates a simple X - Y scatter plot for a vector layer. This algorithm creates a simple X - Y scatter plot for a vector layer.
##'
##' @title QGIS algorithm - Vector layer scatterplot
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param XFIELD `field` - X attribute. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - Y attribute. The name of an existing field. ; delimited list of existing field names.
##' @param HOVERTEXT `expression` - Hover text. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param TITLE `string` - Title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XAXIS_TITLE `string` - X-axis title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YAXIS_TITLE `string` - Y-axis title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XAXIS_LOG `boolean` - Use logarithmic scale for x-axis. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YAXIS_LOG `boolean` - Use logarithmic scale for y-axis. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Scatterplot. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Scatterplot
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_vectorlayerscatterplot <- function(INPUT = qgisprocess:::qgis_default_value(), XFIELD = qgisprocess:::qgis_default_value(), YFIELD = qgisprocess:::qgis_default_value(), HOVERTEXT = qgisprocess:::qgis_default_value(), TITLE = qgisprocess:::qgis_default_value(), XAXIS_TITLE = qgisprocess:::qgis_default_value(), YAXIS_TITLE = qgisprocess:::qgis_default_value(), XAXIS_LOG = qgisprocess:::qgis_default_value(), YAXIS_LOG = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:vectorlayerscatterplot")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:vectorlayerscatterplot", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `HOVERTEXT` = HOVERTEXT, `TITLE` = TITLE, `XAXIS_TITLE` = XAXIS_TITLE, `YAXIS_TITLE` = YAXIS_TITLE, `XAXIS_LOG` = XAXIS_LOG, `YAXIS_LOG` = YAXIS_LOG, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:vectorlayerscatterplot", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `HOVERTEXT` = HOVERTEXT, `TITLE` = TITLE, `XAXIS_TITLE` = XAXIS_TITLE, `YAXIS_TITLE` = YAXIS_TITLE, `XAXIS_LOG` = XAXIS_LOG, `YAXIS_LOG` = YAXIS_LOG, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}