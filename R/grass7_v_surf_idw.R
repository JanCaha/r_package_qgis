##' QGIS Algorithm provided by GRASS v.surf.idw (grass7:v.surf.idw)
##'
##' @title QGIS algorithm v.surf.idw
##'
##' @param input `source` - Input vector layer. Path to a vector layer.
##' @param npoints `number` - Number of interpolation points. A numeric value.
##' @param power `number` - Power parameter; greater values assign greater influence to closer points. A numeric value.
##' @param column `field` - Attribute table column with values to interpolate. The name of an existing field. ; delimited list of existing field names.
##' @param .n `boolean` - Don't index points by raster cell. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param output `rasterDestination` - Interpolated IDW. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Interpolated IDW
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_surf_idw <- function(input = qgisprocess::qgis_default_value(), npoints = qgisprocess::qgis_default_value(), power = qgisprocess::qgis_default_value(), column = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:v.surf.idw")

  output <- qgisprocess::qgis_run_algorithm("grass7:v.surf.idw", `input` = input, `npoints` = npoints, `power` = power, `column` = column, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}