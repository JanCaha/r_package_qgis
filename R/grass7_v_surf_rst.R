##' QGIS Algorithm provided by GRASS v.surf.rst (grass7:v.surf.rst)
##'
##' @title QGIS algorithm v.surf.rst
##'
##' @param input `source` - Input points layer. Path to a vector layer.
##' @param zcolumn `field` - Name of the attribute column with values to be used for approximation. The name of an existing field. ; delimited list of existing field names.
##' @param where `string` - WHERE conditions of SQL statement without 'where' keyword. String value.
##' @param mask `raster` - Name of the raster map used as mask. Path to a raster layer.
##' @param tension `number` - Tension parameter. A numeric value.
##' @param smooth `number` - Smoothing parameter. A numeric value.
##' @param smooth_column `field` - Name of the attribute column with smoothing parameters. The name of an existing field. ; delimited list of existing field names.
##' @param segmax `number` - Maximum number of points in a segment. A numeric value.
##' @param npmin `number` - Minimum number of points for approximation in a segment (segmax). A numeric value.
##' @param dmin `number` - Minimum distance between points (to remove almost identical points). A numeric value.
##' @param dmax `number` - Maximum distance between points on isoline (to insert additional points). A numeric value.
##' @param zscale `number` - Conversion factor for values used for approximation. A numeric value.
##' @param theta `number` - Anisotropy angle (in degrees counterclockwise from East). A numeric value.
##' @param scalex `number` - Anisotropy scaling factor. A numeric value.
##' @param .t `boolean` - Use scale dependent tension. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -t.
##' @param .d `boolean` - Output partial derivatives instead of topographic parameters. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -d.
##' @param elevation `rasterDestination` - Interpolated RST. Path for new raster layer.
##' @param slope `rasterDestination` - Slope. Path for new raster layer.
##' @param aspect `rasterDestination` - Aspect. Path for new raster layer.
##' @param pcurvature `rasterDestination` - Profile curvature. Path for new raster layer.
##' @param tcurvature `rasterDestination` - Tangential curvature. Path for new raster layer.
##' @param mcurvature `rasterDestination` - Mean curvature. Path for new raster layer.
##' @param deviations `vectorDestination` - Deviations. Path for new vector layer.
##' @param treeseg `vectorDestination` - Quadtree Segmentation. Path for new vector layer.
##' @param overwin `vectorDestination` - Overlapping Windows. Path for new vector layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param GRASS_SNAP_TOLERANCE_PARAMETER `number` - v.in.ogr snap tolerance (-1 = no snap). A numeric value.
##' @param GRASS_MIN_AREA_PARAMETER `number` - v.in.ogr min area. A numeric value.
##' @param GRASS_OUTPUT_TYPE_PARAMETER `enum`  of `("auto", "point", "line", "area")` - v.out.ogr output type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRASS_VECTOR_DSCO `string` - v.out.ogr output data source options (dsco). String value.
##' @param GRASS_VECTOR_LCO `string` - v.out.ogr output layer options (lco). String value.
##' @param GRASS_VECTOR_EXPORT_NOCAT `boolean` - Also export features without category (not labeled). Otherwise only features with category are exported. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * elevation - outputRaster - Interpolated RST
##' * slope - outputRaster - Slope
##' * aspect - outputRaster - Aspect
##' * pcurvature - outputRaster - Profile curvature
##' * tcurvature - outputRaster - Tangential curvature
##' * mcurvature - outputRaster - Mean curvature
##' * deviations - outputVector - Deviations
##' * treeseg - outputVector - Quadtree Segmentation
##' * overwin - outputVector - Overlapping Windows
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_v_surf_rst <- function(input = qgisprocess::qgis_default_value(), zcolumn = qgisprocess::qgis_default_value(), where = qgisprocess::qgis_default_value(), mask = qgisprocess::qgis_default_value(), tension = qgisprocess::qgis_default_value(), smooth = qgisprocess::qgis_default_value(), smooth_column = qgisprocess::qgis_default_value(), segmax = qgisprocess::qgis_default_value(), npmin = qgisprocess::qgis_default_value(), dmin = qgisprocess::qgis_default_value(), dmax = qgisprocess::qgis_default_value(), zscale = qgisprocess::qgis_default_value(), theta = qgisprocess::qgis_default_value(), scalex = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .d = qgisprocess::qgis_default_value(), elevation = qgisprocess::qgis_default_value(), slope = qgisprocess::qgis_default_value(), aspect = qgisprocess::qgis_default_value(), pcurvature = qgisprocess::qgis_default_value(), tcurvature = qgisprocess::qgis_default_value(), mcurvature = qgisprocess::qgis_default_value(), deviations = qgisprocess::qgis_default_value(), treeseg = qgisprocess::qgis_default_value(), overwin = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(), GRASS_OUTPUT_TYPE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_VECTOR_DSCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_LCO = qgisprocess::qgis_default_value(), GRASS_VECTOR_EXPORT_NOCAT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:v.surf.rst")
  output <- qgisprocess::qgis_run_algorithm("grass7:v.surf.rst",`input` = input, `zcolumn` = zcolumn, `where` = where, `mask` = mask, `tension` = tension, `smooth` = smooth, `smooth_column` = smooth_column, `segmax` = segmax, `npmin` = npmin, `dmin` = dmin, `dmax` = dmax, `zscale` = zscale, `theta` = theta, `scalex` = scalex, `-t` = .t, `-d` = .d, `elevation` = elevation, `slope` = slope, `aspect` = aspect, `pcurvature` = pcurvature, `tcurvature` = tcurvature, `mcurvature` = mcurvature, `deviations` = deviations, `treeseg` = treeseg, `overwin` = overwin, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER, `GRASS_OUTPUT_TYPE_PARAMETER` = GRASS_OUTPUT_TYPE_PARAMETER, `GRASS_VECTOR_DSCO` = GRASS_VECTOR_DSCO, `GRASS_VECTOR_LCO` = GRASS_VECTOR_LCO, `GRASS_VECTOR_EXPORT_NOCAT` = GRASS_VECTOR_EXPORT_NOCAT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "elevation")
  }
}