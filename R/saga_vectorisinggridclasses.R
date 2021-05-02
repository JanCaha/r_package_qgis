##' QGIS Algorithm provided by SAGA Vectorising grid classes (saga:vectorisinggridclasses)
##'
##' @title QGIS algorithm Vectorising grid classes
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CLASS_ALL `enum`  of `("[0] one single class specified by class identifier", "[1] all classes")` - Class Selection. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASS_ID `number` - Class Identifier. A numeric value.
##' @param SPLIT `enum`  of `("[0] one single (multi-)polygon object", "[1] each island as separated polygon")` - Vectorised class as.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param POLYGONS `vectorDestination` - Vectorized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Vectorized
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_vectorisinggridclasses <- function(GRID = qgisprocess::qgis_default_value(), CLASS_ALL = qgisprocess::qgis_default_value(), CLASS_ID = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:vectorisinggridclasses")
  output <- qgisprocess::qgis_run_algorithm("saga:vectorisinggridclasses",`GRID` = GRID, `CLASS_ALL` = CLASS_ALL, `CLASS_ID` = CLASS_ID, `SPLIT` = SPLIT, `POLYGONS` = POLYGONS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POLYGONS")
  }
}