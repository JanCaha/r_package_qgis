##' QGIS Algorithm provided by GRASS r.li.edgedensity.ascii (grass7:r.li.edgedensity.ascii)
##'
##' @title QGIS algorithm r.li.edgedensity.ascii
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param config_txt `string` - Landscape structure configuration. String value.
##' @param config `file` - Landscape structure configuration file. Path to a file.
##' @param patch_type `string` - The value of the patch type. String value.
##' @param .b `boolean` - Exclude border edges. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output_txt `fileDestination` - Edge Density. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output_txt - outputFile - Edge Density
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_li_edgedensity_ascii <- function(input = qgisprocess::qgis_default_value(), config_txt = qgisprocess::qgis_default_value(), config = qgisprocess::qgis_default_value(), patch_type = qgisprocess::qgis_default_value(), .b = qgisprocess::qgis_default_value(), output_txt = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.li.edgedensity.ascii",`input` = input, `config_txt` = config_txt, `config` = config, `patch_type` = patch_type, `-b` = .b, `output_txt` = output_txt, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output_txt")
}
}