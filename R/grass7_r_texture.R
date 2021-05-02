##' QGIS Algorithm provided by GRASS r.texture (grass7:r.texture)
##'
##' @title QGIS algorithm r.texture
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param method `enum`  of `("asm", "contrast", "corr", "var", "idm", "sa", "se", "sv", "entr", "dv", "de", "moc1", "moc2")` - Textural measurement method(s). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param size `number` - The size of moving window (odd and = 3). A numeric value.
##' @param distance `number` - The distance between two samples (= 1). A numeric value.
##' @param .s `boolean` - Separate output for each angle (0, 45, 90, 135). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
##' @param .a `boolean` - Calculate all textural measurements. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -a.
##' @param output `folderDestination` - Texture files directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Texture files directory
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_texture <- function(input = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), size = qgisprocess::qgis_default_value(), distance = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), .a = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:r.texture")
  output <- qgisprocess::qgis_run_algorithm("grass7:r.texture",`input` = input, `method` = method, `size` = size, `distance` = distance, `-s` = .s, `-a` = .a, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}