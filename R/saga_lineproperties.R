##' QGIS Algorithm provided by SAGA Line properties (saga:lineproperties)
##'
##' @title QGIS algorithm Line properties
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Lines with Property Attributes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Lines with Property Attributes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_lineproperties <- function(LINES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:lineproperties")

  output <- qgisprocess::qgis_run_algorithm("saga:lineproperties", `LINES` = LINES, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}