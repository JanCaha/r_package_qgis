##' QGIS Algorithm provided by GDAL Build virtual vector (gdal:buildvirtualvector). This algorithm creates a virtual layer that contains a set of vector layers.  The output virtual layer will not be opened in the current project.
##'
##' @title QGIS algorithm - Build virtual vector
##'
##' @param INPUT `multilayer` - Input datasources. .
##' @param UNIONED `boolean` - Create "unioned" VRT. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - Virtual vector. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Virtual vector
##' * VRT_STRING - outputString - Virtual string
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_buildvirtualvector <- function(INPUT = qgisprocess:::qgis_default_value(), UNIONED = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:buildvirtualvector")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualvector", `INPUT` = INPUT, `UNIONED` = UNIONED, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:buildvirtualvector", `INPUT` = INPUT, `UNIONED` = UNIONED, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}