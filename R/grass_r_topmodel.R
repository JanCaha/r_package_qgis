##' QGIS Algorithm provided by GRASS r.topmodel (grass:r.topmodel). Simulates TOPMODEL which is a physically based hydrologic model.
##'
##' @title QGIS algorithm - r.topmodel
##'
##' @param parameters `file` - Name of TOPMODEL parameters file. Path to a file.
##' @param topidxstats `file` - Name of topographic index statistics file. Path to a file.
##' @param input `file` - Name of rainfall and potential evapotranspiration data file. Path to a file.
##' @param timestep `number` - Time step. Generate output for this time step. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param topidxclass `number` - Topographic index class. Generate output for this topographic index class. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param output `fileDestination` - TOPMODEL output. Path for new file.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputFile - TOPMODEL output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_r_topmodel <- function(parameters = qgisprocess:::qgis_default_value(), topidxstats = qgisprocess:::qgis_default_value(), input = qgisprocess:::qgis_default_value(), timestep = qgisprocess:::qgis_default_value(), topidxclass = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:r.topmodel")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:r.topmodel", `parameters` = parameters, `topidxstats` = topidxstats, `input` = input, `timestep` = timestep, `topidxclass` = topidxclass, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:r.topmodel", `parameters` = parameters, `topidxstats` = topidxstats, `input` = input, `timestep` = timestep, `topidxclass` = topidxclass, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}