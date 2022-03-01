##' QGIS Algorithm provided by QGIS Concave hull (k-nearest neighbor) (qgis:knearestconcavehull)
##'
##' @title QGIS algorithm Concave hull (k-nearest neighbor)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param KNEIGHBORS `number` - Number of neighboring points to consider (a lower number is more concave, a higher number is smoother). A numeric value.
##' @param FIELD `field` - Field (set if creating concave hulls by class). The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Concave hull. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Concave hull
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_knearestconcavehull <- function(INPUT = qgisprocess::qgis_default_value(), KNEIGHBORS = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:knearestconcavehull")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:knearestconcavehull", `INPUT` = INPUT, `KNEIGHBORS` = KNEIGHBORS, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:knearestconcavehull", `INPUT` = INPUT, `KNEIGHBORS` = KNEIGHBORS, `FIELD` = FIELD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}