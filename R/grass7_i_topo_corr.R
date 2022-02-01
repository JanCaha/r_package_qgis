##' QGIS Algorithm provided by GRASS i.topo.corr (grass7:i.topo.corr)
##'
##' @title QGIS algorithm i.topo.corr
##'
##' @param input `multilayer` - Name of reflectance raster maps to be corrected topographically. .
##' @param basemap `raster` - Name of illumination input base raster map. Path to a raster layer.
##' @param zenith `number` - Solar zenith in degrees. A numeric value.
##' @param method `enum`  of `("cosine", "minnaert", "c-factor", "percent")` - Topographic correction method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param .s `boolean` - Scale output to input and copy color rules. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -s.
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

grass7_i_topo_corr <- function(input = qgisprocess::qgis_default_value(), basemap = qgisprocess::qgis_default_value(), zenith = qgisprocess::qgis_default_value(), method = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.topo.corr")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.topo.corr", `input` = input, `basemap` = basemap, `zenith` = zenith, `method` = method, `-s` = .s, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}