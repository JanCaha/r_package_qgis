##' QGIS Algorithm provided by GRASS r.describe (grass7:r.describe)
##'
##' @title QGIS algorithm r.describe
##'
##' @param map `raster` - input raster layer. Path to a raster layer.
##' @param null_value `string` - String representing NULL value. String value.
##' @param nsteps `number` - Number of quantization steps. A numeric value.
##' @param .r `boolean` - Only print the range of the data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .n `boolean` - Suppress reporting of any NULLs. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .d `boolean` - Use the current region. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param .i `boolean` - Read floating-point map as integer. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -i.
##' @param html `fileDestination` - Categories. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * html - outputHtml - Categories
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_describe <- function(map = qgisprocess::qgis_default_value(), null_value = qgisprocess::qgis_default_value(), nsteps = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), .i = qgisprocess::qgis_default_value(), html = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.describe")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.describe",`map` = map, `null_value` = null_value, `nsteps` = nsteps, `-r` = .r, `-n` = .n, `-d` = .d, `-i` = .i, `html` = html, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "html")
  }
}