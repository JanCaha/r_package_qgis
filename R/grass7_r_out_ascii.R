##' QGIS Algorithm provided by GRASS r.out.ascii (grass7:r.out.ascii)
##'
##' @title QGIS algorithm r.out.ascii
##'
##' @param input `raster` - Input raster. Path to a raster layer.
##' @param precision `number` - Number of significant digits. A numeric value.
##' @param width `number` - Number of values printed before wrapping a line (only SURFER or MODFLOW format). A numeric value.
##' @param null_value `string` - String to represent null cell (GRASS grid only). String value.
##' @param .s `boolean` - Write SURFER (Golden Software) ASCII grid. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .m `boolean` - Write MODFLOW (USGS) ASCII array. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param .i `boolean` - Force output of integer values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param output `fileDestination` - GRASS Ascii. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - GRASS Ascii
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_out_ascii <- function(input = qgisprocess::qgis_default_value(), precision = qgisprocess::qgis_default_value(), width = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.out.ascii")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.out.ascii",`input` = input, `precision` = precision, `width` = width, `null_value` = null_value, `-s` = .s, `-m` = .m, `-i` = .i, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}