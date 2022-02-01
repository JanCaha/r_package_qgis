##' QGIS Algorithm provided by SAGA Raster values to points (saga:rastervaluestopoints)
##'
##' @title QGIS algorithm Raster values to points
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param NODATA `boolean` - Exclude NoData Cells. 1 for true/yes. 0 for false/no.
##' @param TYPE `enum`  of `("[0] nodes", "[1] cells")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHAPES `vectorDestination` - Shapes. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SHAPES - outputVector - Shapes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rastervaluestopoints <- function(GRIDS = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), SHAPES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:rastervaluestopoints")

  output <- qgisprocess::qgis_run_algorithm("saga:rastervaluestopoints", `GRIDS` = GRIDS, `POLYGONS` = POLYGONS, `NODATA` = NODATA, `TYPE` = TYPE, `SHAPES` = SHAPES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SHAPES")
  }
}