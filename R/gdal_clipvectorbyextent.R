##' QGIS Algorithm provided by GDAL Clip vector by extent (gdal:clipvectorbyextent)
##'
##' @title QGIS algorithm Clip vector by extent
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXTENT `extent` - Clipping extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - Clipped (extent). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Clipped 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_clipvectorbyextent <- function(INPUT = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:clipvectorbyextent")
  output <- qgisprocess::qgis_run_algorithm("gdal:clipvectorbyextent",`INPUT` = INPUT, `EXTENT` = EXTENT, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}