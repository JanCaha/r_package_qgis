##' QGIS Algorithm provided by GRASS r.colors (grass:r.colors). Creates/modifies the color table associated with a raster map.
##'
##' @title QGIS algorithm - r.colors
##'
##' @param map `multilayer` - Name of raster maps(s). .
##' @param color `enum`  of `("not selected", "aspect", "aspectcolr", "bcyr", "bgyr", "blues", "byg", "byr", "celsius", "corine", "curvature", "differences", "elevation", "etopo2", "evi", "fahrenheit", "gdd", "greens", "grey", "grey.eq", "grey.log", "grey1.0", "grey255", "gyr", "haxby", "kelvin", "ndvi", "ndwi", "oranges", "population", "population_dens", "precipitation", "precipitation_daily", "precipitation_monthly", "rainbow", "ramp", "random", "reds", "rstcurv", "ryb", "ryg", "sepia", "slope", "srtm", "srtm_plus", "terrain", "wave")` - Name of color table. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param rules_txt `string` - Color rules. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param rules `file` - Color rules file. Path to a file.
##' @param raster `raster` - Raster map from which to copy color table. Path to a raster layer.
##' @param .r `boolean` - Remove existing color table. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -r.
##' @param .w `boolean` - Only write new color table if it does not already exist. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -w.
##' @param .n `boolean` - Invert colors. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param .g `boolean` - Logarithmic scaling. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -g.
##' @param .a `boolean` - Logarithmic-absolute scaling. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -a.
##' @param .e `boolean` - Histogram equalization. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -e.
##' @param output_dir `folderDestination` - Output Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output_dir - outputFolder - Output Directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_colors <- function(map = qgisprocess:::qgis_default_value(), color = qgisprocess:::qgis_default_value(), rules_txt = qgisprocess:::qgis_default_value(), rules = qgisprocess:::qgis_default_value(), raster = qgisprocess:::qgis_default_value(), .r = qgisprocess:::qgis_default_value(), .w = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), .g = qgisprocess:::qgis_default_value(), .a = qgisprocess:::qgis_default_value(), .e = qgisprocess:::qgis_default_value(), output_dir = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.colors")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.colors", `map` = map, `color` = color, `rules_txt` = rules_txt, `rules` = rules, `raster` = raster, `-r` = .r, `-w` = .w, `-n` = .n, `-g` = .g, `-a` = .a, `-e` = .e, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.colors", `map` = map, `color` = color, `rules_txt` = rules_txt, `rules` = rules, `raster` = raster, `-r` = .r, `-w` = .w, `-n` = .n, `-g` = .g, `-a` = .a, `-e` = .e, `output_dir` = output_dir, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output_dir")
  }
}