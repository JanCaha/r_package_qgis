##' QGIS Algorithm provided by QGIS (native c++) Extract by location (native:extractbylocation)
##'
##' @title QGIS algorithm Extract by location
##'
##' @param INPUT `source` - Extract features from. Path to a vector layer.
##' @param PREDICATE `enum`  of `("intersect", "contain", "disjoint", "equal", "touch", "overlap", "are within", "cross")` - Where the features (geometric predicate). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INTERSECT `source` - By comparing to the features from. Path to a vector layer.
##' @param OUTPUT `sink` - Extracted (location). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted 
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractbylocation <- function(INPUT = qgisprocess::qgis_default_value(), PREDICATE = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:extractbylocation")

  output <- qgisprocess::qgis_run_algorithm("native:extractbylocation", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}