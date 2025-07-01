##' QGIS Algorithm provided by QGIS (native c++) Extract by location (native:extractbylocation). Creates a vector layer that only contains features matching a spatial relationship with the features in an additional layer. This algorithm creates a new vector layer that only contains matching features from an input layer. The criteria for adding features to the resulting layer is defined based on the spatial relationship between each feature and the features in an additional layer.
##'
##' @title QGIS algorithm - Extract by location
##'
##' @param INPUT `source` - Extract features from. Path to a vector layer.
##' @param PREDICATE `enum`  of `("intersect", "contain", "disjoint", "equal", "touch", "overlap", "are within", "cross")` - Where the features (geometric predicate). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INTERSECT `source` - By comparing to the features from. Path to a vector layer.
##' @param OUTPUT `sink` - Extracted (location). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted (location)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractbylocation <- function(INPUT = qgisprocess:::qgis_default_value(), PREDICATE = qgisprocess:::qgis_default_value(), INTERSECT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractbylocation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractbylocation", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractbylocation", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}