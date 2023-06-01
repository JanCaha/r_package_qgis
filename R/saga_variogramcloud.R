##' QGIS Algorithm provided by SAGA Variogram cloud (saga:variogramcloud)
##'
##' @title QGIS algorithm Variogram cloud
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISTMAX `number` - Maximum Distance. A numeric value.
##' @param NSKIP `number` - Skip Number. A numeric value.
##' @param RESULT `vectorDestination` - Variogram Cloud. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Variogram Cloud
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_variogramcloud <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), DISTMAX = qgisprocess:::qgis_default_value(), NSKIP = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:variogramcloud")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:variogramcloud", `POINTS` = POINTS, `FIELD` = FIELD, `DISTMAX` = DISTMAX, `NSKIP` = NSKIP, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:variogramcloud", `POINTS` = POINTS, `FIELD` = FIELD, `DISTMAX` = DISTMAX, `NSKIP` = NSKIP, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}