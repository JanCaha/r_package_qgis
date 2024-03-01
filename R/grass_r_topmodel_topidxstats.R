##' QGIS Algorithm provided by GRASS r.topmodel.topidxstats (grass:r.topmodel.topidxstats). r.topmodel.topidxstats - Builds a TOPMODEL topographic index statistics file.
##'
##' @title QGIS algorithm - r.topmodel.topidxstats
##'
##' @param topidx `raster` - Name of input topographic index raster map. Path to a raster layer.
##' @param ntopidxclasses `number` - Number of topographic index classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param outtopidxstats `fileDestination` - TOPMODEL topographic index statistics file. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * outtopidxstats - outputFile - TOPMODEL topographic index statistics file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_topmodel_topidxstats <- function(topidx = qgisprocess:::qgis_default_value(), ntopidxclasses = qgisprocess:::qgis_default_value(), outtopidxstats = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.topmodel.topidxstats")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.topmodel.topidxstats", `topidx` = topidx, `ntopidxclasses` = ntopidxclasses, `outtopidxstats` = outtopidxstats, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.topmodel.topidxstats", `topidx` = topidx, `ntopidxclasses` = ntopidxclasses, `outtopidxstats` = outtopidxstats, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "outtopidxstats")
  }
}