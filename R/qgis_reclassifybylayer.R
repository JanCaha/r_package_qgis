##' QGIS Algorithm provided by QGIS (native c++) Reclassify by layer (native:reclassifybylayer)
##'
##' @title QGIS algorithm Reclassify by layer
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param INPUT_TABLE `source` - Layer containing class breaks. Path to a vector layer.
##' @param MIN_FIELD `field` - Minimum class value field. The name of an existing field. ; delimited list of existing field names.
##' @param MAX_FIELD `field` - Maximum class value field. The name of an existing field. ; delimited list of existing field names.
##' @param VALUE_FIELD `field` - Output value field. The name of an existing field. ; delimited list of existing field names.
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

qgis_reclassifybylayer <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), RASTER_BAND = qgisprocess::qgis_default_value(), INPUT_TABLE = qgisprocess::qgis_default_value(), MIN_FIELD = qgisprocess::qgis_default_value(), MAX_FIELD = qgisprocess::qgis_default_value(), VALUE_FIELD = qgisprocess::qgis_default_value(), NO_DATA = qgisprocess::qgis_default_value(), RANGE_BOUNDARIES = qgisprocess::qgis_default_value(), NODATA_FOR_MISSING = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:reclassifybylayer",`INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `INPUT_TABLE` = INPUT_TABLE, `MIN_FIELD` = MIN_FIELD, `MAX_FIELD` = MAX_FIELD, `VALUE_FIELD` = VALUE_FIELD, `NO_DATA` = NO_DATA, `RANGE_BOUNDARIES` = RANGE_BOUNDARIES, `NODATA_FOR_MISSING` = NODATA_FOR_MISSING, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}