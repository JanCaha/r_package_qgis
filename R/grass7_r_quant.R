##' QGIS Algorithm provided by GRASS r.quant (grass7:r.quant)
##'
##' @title QGIS algorithm r.quant
##'
##' @param input `multilayer` - Raster layer(s) to be quantized. .
##' @param basemap `raster` - Base layer to take quant rules from. Path to a raster layer.
##' @param fprange `range` - Floating point range: dmin,dmax. Two comma separated numeric values, e.g. '1,10'.
##' @param range `range` - Integer range: min,max. Two comma separated numeric values, e.g. '1,10'.
##' @param .t `boolean` - Truncate floating point data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .r `boolean` - Round floating point data. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `folderDestination` - Quantized raster(s). Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Quantized raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_quant <- function(input = qgisprocess::qgis_default_value(), basemap = qgisprocess::qgis_default_value(), fprange = qgisprocess::qgis_default_value(), range = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.quant",`input` = input, `basemap` = basemap, `fprange` = fprange, `range` = range, `-t` = .t, `-r` = .r, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}