##' QGIS Algorithm provided by QGIS (native c++) Reclassify by table (native:reclassifybytable). This algorithm reclassifies a raster band by assigning new class values based on the ranges specified in a fixed table.
##'
##' @title QGIS algorithm - Reclassify by table
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param TABLE `matrix` - Reclassification table. A comma delimited list of values.
##' @param NO_DATA `number` - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RANGE_BOUNDARIES `enum`  of `("min  value = max", "min = value  max", "min = value = max", "min  value  max")` - Range boundaries. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATA_FOR_MISSING `boolean` - Use NoData when no range matches value. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "Int32", "UInt32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Reclassified raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Reclassified raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_reclassifybytable <- function(INPUT_RASTER = qgisprocess:::qgis_default_value(), RASTER_BAND = qgisprocess:::qgis_default_value(), TABLE = qgisprocess:::qgis_default_value(), NO_DATA = qgisprocess:::qgis_default_value(), RANGE_BOUNDARIES = qgisprocess:::qgis_default_value(), NODATA_FOR_MISSING = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:reclassifybytable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:reclassifybytable", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `TABLE` = TABLE, `NO_DATA` = NO_DATA, `RANGE_BOUNDARIES` = RANGE_BOUNDARIES, `NODATA_FOR_MISSING` = NODATA_FOR_MISSING, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:reclassifybytable", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `TABLE` = TABLE, `NO_DATA` = NO_DATA, `RANGE_BOUNDARIES` = RANGE_BOUNDARIES, `NODATA_FOR_MISSING` = NODATA_FOR_MISSING, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}