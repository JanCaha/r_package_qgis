##' QGIS Algorithm provided by SAGA Polygon shape indices (saga:polygonshapeindices)
##'
##' @title QGIS algorithm Polygon shape indices
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param INDEX `vectorDestination` - Shape Index. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INDEX - outputVector - Shape Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polygonshapeindices <- function(SHAPES = qgisprocess::qgis_default_value(), INDEX = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polygonshapeindices")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polygonshapeindices", `SHAPES` = SHAPES, `INDEX` = INDEX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polygonshapeindices", `SHAPES` = SHAPES, `INDEX` = INDEX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INDEX")
  }
}