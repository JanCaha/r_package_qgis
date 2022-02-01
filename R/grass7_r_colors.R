##' QGIS Algorithm provided by GRASS r.colors (grass7:r.colors)
##'
##' @title QGIS algorithm r.colors
##'
##' @param map `multilayer` - Name of raster maps(s). .
##' @param color `enum`  of `("not selected", "aspect", "aspectcolr", "bcyr", "bgyr", "blues", "byg", "byr", "celsius", "corine", "curvature", "differences", "elevation", "etopo2", "evi", "fahrenheit", "gdd", "greens", "grey", "grey.eq", "grey.log", "grey1.0", "grey255", "gyr", "haxby", "kelvin", "ndvi", "ndwi", "oranges", "population", "population_dens", "precipitation", "precipitation_daily", "precipitation_monthly", "rainbow", "ramp", "random", "reds", "rstcurv", "ryb", "ryg", "sepia", "slope", "srtm", "srtm_plus", "terrain", "wave")` - Name of color table. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param rules_txt `string` - Color rules. String value.
##' @param rules `file` - Color rules file. Path to a file.
##' @param raster `raster` - Raster map from which to copy color table. Path to a raster layer.
##' @param .r `boolean` - Remove existing color table. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param .w `boolean` - Only write new color table if it does not already exist. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -w.
##' @param .n `boolean` - Invert colors. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .g `boolean` - Logarithmic scaling. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -g.
##' @param .a `boolean` - Logarithmic-absolute scaling. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param .e `boolean` - Histogram equalization. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -e.
##' @param output_dir `folderDestination` - Output Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output_dir - outputFolder - Output Directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_colors <- function(map = qgisprocess::qgis_default_value(), color = qgisprocess::qgis_default_value(), rules_txt = qgisprocess::qgis_default_value(), rules = qgisprocess::qgis_default_value(), raster = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), .w = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .g = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), .e = qgisprocess::qgis_default_value(), output_dir = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.colors")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.colors", `map` = map, `color` = color, `rules_txt` = rules_txt, `rules` = rules, `raster` = raster, `-r` = .r, `-w` = .w, `-n` = .n, `-g` = .g, `-a` = .a, `-e` = .e, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output_dir")
  }
}