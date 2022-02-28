##' QGIS Algorithm provided by GDAL Extract projection (gdal:extractprojection)
##'
##' @title QGIS algorithm Extract projection
##'
##' @param INPUT `raster` - Input file. Path to a raster layer.
##' @param PRJ_FILE_CREATE `boolean` - Create also .prj file. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * PRJ_FILE - outputFile - ESRI Shapefile prj file
##' * WORLD_FILE - outputFile - World file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_extractprojection <- function(INPUT = qgisprocess::qgis_default_value(), PRJ_FILE_CREATE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:extractprojection")

  output <- qgisprocess::qgis_run_algorithm("gdal:extractprojection", `INPUT` = INPUT, `PRJ_FILE_CREATE` = PRJ_FILE_CREATE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PRJ_FILE")
  }
}