##' QGIS Algorithm provided by GRASS r.topmodel (grass7:r.topmodel)
##'
##' @title QGIS algorithm r.topmodel
##'
##' @param parameters `file` - Name of TOPMODEL parameters file. Path to a file.
##' @param topidxstats `file` - Name of topographic index statistics file. Path to a file.
##' @param input `file` - Name of rainfall and potential evapotranspiration data file. Path to a file.
##' @param timestep `number` - Time step. Generate output for this time step. A numeric value.
##' @param topidxclass `number` - Topographic index class. Generate output for this topographic index class. A numeric value.
##' @param output `fileDestination` - TOPMODEL output. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - TOPMODEL output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_topmodel <- function(parameters = qgisprocess::qgis_default_value(), topidxstats = qgisprocess::qgis_default_value(), input = qgisprocess::qgis_default_value(), timestep = qgisprocess::qgis_default_value(), topidxclass = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.topmodel",`parameters` = parameters, `topidxstats` = topidxstats, `input` = input, `timestep` = timestep, `topidxclass` = topidxclass, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}