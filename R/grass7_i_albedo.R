##' QGIS Algorithm provided by GRASS i.albedo (grass7:i.albedo)
##'
##' @title QGIS algorithm i.albedo
##'
##' @param input `multilayer` - Name of input raster maps. .
##' @param .m `boolean` - MODIS (7 input bands:1,2,3,4,5,6,7). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param .n `boolean` - NOAA AVHRR (2 input bands:1,2). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .l `boolean` - Landsat 5+7 (6 input bands:1,2,3,4,5,7). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -l.
##' @param .arg_8 `boolean` - Landsat 8 (7 input bands:1,2,3,4,5,6,7). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -8.
##' @param .a `boolean` - ASTER (6 input bands:1,3,5,6,8,9). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .c `boolean` - Aggressive mode (Landsat). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param .d `boolean` - Soft mode (MODIS). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param output `rasterDestination` - Albedo. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Albedo
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_albedo <- function(input = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), .arg_8 = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .c = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:i.albedo")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:i.albedo", `input` = input, `-m` = .m, `-n` = .n, `-l` = .l, `-8` = .arg_8, `-a` = .a, `-c` = .c, `-d` = .d, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:i.albedo", `input` = input, `-m` = .m, `-n` = .n, `-l` = .l, `-8` = .arg_8, `-a` = .a, `-c` = .c, `-d` = .d, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}