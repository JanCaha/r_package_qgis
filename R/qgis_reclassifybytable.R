##' QGIS Algorithm provided by QGIS (native c++) Reclassify by table (native:reclassifybytable)
##'
##' @title QGIS algorithm Reclassify by table
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param TABLE `matrix` - Reclassification table. A comma delimited list of values.
##' @param NO_DATA `number` - Output no data value. A numeric value.
##' @param RANGE_BOUNDARIES `enum`  of `("min < value <= max", "min <= value < max", "min <= value <= max", "min < value < max")` - Range boundaries. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATA_FOR_MISSING `boolean` - Use no data when no range matches value. 1 for true/yes. 0 for false/no.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "Int32", "UInt32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Reclassified raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Reclassified raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_reclassifybytable <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), RASTER_BAND = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(), NO_DATA = qgisprocess::qgis_default_value(), RANGE_BOUNDARIES = qgisprocess::qgis_default_value(), NODATA_FOR_MISSING = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:reclassifybytable")
  output <- qgisprocess::qgis_run_algorithm("native:reclassifybytable",`INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `TABLE` = TABLE, `NO_DATA` = NO_DATA, `RANGE_BOUNDARIES` = RANGE_BOUNDARIES, `NODATA_FOR_MISSING` = NODATA_FOR_MISSING, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}