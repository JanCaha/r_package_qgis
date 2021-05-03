##' QGIS Algorithm provided by GDAL Contour (gdal:contour)
##'
##' @title QGIS algorithm Contour
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param INTERVAL `number` - Interval between contour lines. A numeric value.
##' @param FIELD_NAME `string` - Attribute name (if not set, no elevation attribute is attached). String value.
##' @param CREATE_3D `boolean` - Produce 3D vector. 1 for true/yes. 0 for false/no.
##' @param IGNORE_NODATA `boolean` - Treat all raster values as valid. 1 for true/yes. 0 for false/no.
##' @param NODATA `number` - Input pixel value to treat as "nodata". A numeric value.
##' @param OFFSET `number` - Offset from zero relative to which to interpret intervals. A numeric value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `vectorDestination` - Contours. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Contours
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_contour <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), INTERVAL = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), CREATE_3D = qgisprocess::qgis_default_value(), IGNORE_NODATA = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OFFSET = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:contour")

  output <- qgisprocess::qgis_run_algorithm("gdal:contour", `INPUT` = INPUT, `BAND` = BAND, `INTERVAL` = INTERVAL, `FIELD_NAME` = FIELD_NAME, `CREATE_3D` = CREATE_3D, `IGNORE_NODATA` = IGNORE_NODATA, `NODATA` = NODATA, `OFFSET` = OFFSET, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}