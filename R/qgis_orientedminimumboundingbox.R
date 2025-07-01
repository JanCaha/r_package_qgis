##' QGIS Algorithm provided by QGIS (native c++) Oriented minimum bounding box (native:orientedminimumboundingbox). Calculates the minimum area rotated rectangle which covers each feature in an input layer. This algorithm calculates the minimum area rotated rectangle which covers each feature in an input layer.  For singlepart point features, the output corresponds to the bounding box of the geometry.  See the 'Minimum bounding geometry' algorithm for an oriented bounding box calculation which covers the whole layer or grouped subsets of features.
##'
##' @title QGIS algorithm - Oriented minimum bounding box
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT `sink` - Bounding boxes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Bounding boxes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_orientedminimumboundingbox <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:orientedminimumboundingbox")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:orientedminimumboundingbox", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:orientedminimumboundingbox", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}