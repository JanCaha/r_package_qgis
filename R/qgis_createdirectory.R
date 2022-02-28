##' QGIS Algorithm provided by QGIS (native c++) Create directory (native:createdirectory)
##'
##' @title QGIS algorithm Create directory
##'
##' @param PATH `layer` - Directory path. Path to a vector, raster or mesh layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFolder - Directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_createdirectory <- function(PATH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:createdirectory")

  output <- qgisprocess::qgis_run_algorithm("native:createdirectory", `PATH` = PATH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}