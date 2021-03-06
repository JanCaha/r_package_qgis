##' QGIS Algorithm provided by GRASS r.topmodel.topidxstats (grass7:r.topmodel.topidxstats)
##'
##' @title QGIS algorithm r.topmodel.topidxstats
##'
##' @param topidx `raster` - Name of input topographic index raster map. Path to a raster layer.
##' @param ntopidxclasses `number` - Number of topographic index classes. A numeric value.
##' @param outtopidxstats `fileDestination` - TOPMODEL topographic index statistics file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * outtopidxstats - outputFile - TOPMODEL topographic index statistics file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_topmodel_topidxstats <- function(topidx = qgisprocess::qgis_default_value(), ntopidxclasses = qgisprocess::qgis_default_value(), outtopidxstats = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:r.topmodel.topidxstats")

  output <- qgisprocess::qgis_run_algorithm("grass7:r.topmodel.topidxstats", `topidx` = topidx, `ntopidxclasses` = ntopidxclasses, `outtopidxstats` = outtopidxstats, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "outtopidxstats")
  }
}