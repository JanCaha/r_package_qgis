##' QGIS Algorithm provided by QGIS Vector layer scatterplot 3D (qgis:scatter3dplot). Creates a 3D scatter plot for a vector layer. This algorithm creates a 3D scatter plot for a vector layer.
##'
##' @title QGIS algorithm - Vector layer scatterplot 3D
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param XFIELD `field` - X attribute. The name of an existing field. ; delimited list of existing field names.
##' @param YFIELD `field` - Y attribute. The name of an existing field. ; delimited list of existing field names.
##' @param ZFIELD `field` - Z attribute. The name of an existing field. ; delimited list of existing field names.
##' @param TITLE `string` - Title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param XAXIS_TITLE `string` - X-axis title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param YAXIS_TITLE `string` - Y-axis title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZAXIS_TITLE `string` - Z-axis title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Scatterplot 3D. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Scatterplot 3D
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_scatter3dplot <- function(INPUT = qgisprocess:::qgis_default_value(), XFIELD = qgisprocess:::qgis_default_value(), YFIELD = qgisprocess:::qgis_default_value(), ZFIELD = qgisprocess:::qgis_default_value(), TITLE = qgisprocess:::qgis_default_value(), XAXIS_TITLE = qgisprocess:::qgis_default_value(), YAXIS_TITLE = qgisprocess:::qgis_default_value(), ZAXIS_TITLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:scatter3dplot")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:scatter3dplot", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `TITLE` = TITLE, `XAXIS_TITLE` = XAXIS_TITLE, `YAXIS_TITLE` = YAXIS_TITLE, `ZAXIS_TITLE` = ZAXIS_TITLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:scatter3dplot", `INPUT` = INPUT, `XFIELD` = XFIELD, `YFIELD` = YFIELD, `ZFIELD` = ZFIELD, `TITLE` = TITLE, `XAXIS_TITLE` = XAXIS_TITLE, `YAXIS_TITLE` = YAXIS_TITLE, `ZAXIS_TITLE` = ZAXIS_TITLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}