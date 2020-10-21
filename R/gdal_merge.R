##' QGIS Algorithm provided by GDAL Merge (gdal:merge)
##'
##' @title QGIS algorithm Merge
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param PCT `boolean` - Grab pseudocolor table from first layer. 1 for true/yes. 0 for false/no.
##' @param SEPARATE `boolean` - Place each input file into a separate band. 1 for true/yes. 0 for false/no.
##' @param NODATA_INPUT `number` - Input pixel value to treat as "nodata". A numeric value.
##' @param NODATA_OUTPUT `number` - Assign specified "nodata" value to output. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Merged. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Merged
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_merge <- function(INPUT = qgisprocess::qgis_default_value(), PCT = qgisprocess::qgis_default_value(), SEPARATE = qgisprocess::qgis_default_value(), NODATA_INPUT = qgisprocess::qgis_default_value(), NODATA_OUTPUT = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:merge",`INPUT` = INPUT, `PCT` = PCT, `SEPARATE` = SEPARATE, `NODATA_INPUT` = NODATA_INPUT, `NODATA_OUTPUT` = NODATA_OUTPUT, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}