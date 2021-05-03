##' QGIS Algorithm provided by GRASS i.pca (grass7:i.pca)
##'
##' @title QGIS algorithm i.pca
##'
##' @param input `multilayer` - Name of two or more input raster maps. .
##' @param rescale `range` - Rescaling range for output maps. For no rescaling use 0,0. Two comma separated numeric values, e.g. '1,10'.
##' @param percent `number` - Cumulative percent importance for filtering. A numeric value.
##' @param .n `boolean` - Normalize (center and scale) input maps. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -n.
##' @param .f `boolean` - Output will be filtered input bands. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -f.
##' @param output `folderDestination` - Output Directory. Path for an existing or new folder.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFolder - Output Directory
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_pca <- function(input = qgisprocess::qgis_default_value(), rescale = qgisprocess::qgis_default_value(), percent = qgisprocess::qgis_default_value(), .n = qgisprocess::qgis_default_value(), .f = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.pca")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.pca", `input` = input, `rescale` = rescale, `percent` = percent, `-n` = .n, `-f` = .f, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}