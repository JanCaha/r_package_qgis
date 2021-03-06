##' QGIS Algorithm provided by GRASS r.tile (grass7:r.tile)
##'
##' @title QGIS algorithm r.tile
##'
##' @param input `raster` - Name of input raster map. Path to a raster layer.
##' @param width `number` - Width of tiles (columns). A numeric value.
##' @param height `number` - Height of tiles (rows). A numeric value.
##' @param overlap `number` - Overlap of tiles. A numeric value.
##' @param output `folderDestination` - Tiles Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Tiles Directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_tile <- function(input = qgisprocess::qgis_default_value(), width = qgisprocess::qgis_default_value(), height = qgisprocess::qgis_default_value(), overlap = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.tile")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.tile", `input` = input, `width` = width, `height` = height, `overlap` = overlap, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}