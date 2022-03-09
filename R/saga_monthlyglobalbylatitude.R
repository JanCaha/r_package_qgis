##' QGIS Algorithm provided by SAGA Monthly global by latitude (saga:monthlyglobalbylatitude)
##'
##' @title QGIS algorithm Monthly global by latitude
##'
##' @param ALBEDO `source` - Albedo. Path to a vector layer.
##' @param FIELD `field` - Field. The name of an existing field. ; delimited list of existing field names.
##' @param YEAR `number` - Year (ka). A numeric value.
##' @param DLAT `number` - Latitude Increment (Degree). A numeric value.
##' @param SOLARRAD `vectorDestination` - Solar Radiation. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SOLARRAD - outputVector - Solar Radiation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_monthlyglobalbylatitude <- function(ALBEDO = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), YEAR = qgisprocess::qgis_default_value(), DLAT = qgisprocess::qgis_default_value(), SOLARRAD = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:monthlyglobalbylatitude")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:monthlyglobalbylatitude", `ALBEDO` = ALBEDO, `FIELD` = FIELD, `YEAR` = YEAR, `DLAT` = DLAT, `SOLARRAD` = SOLARRAD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:monthlyglobalbylatitude", `ALBEDO` = ALBEDO, `FIELD` = FIELD, `YEAR` = YEAR, `DLAT` = DLAT, `SOLARRAD` = SOLARRAD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SOLARRAD")
  }
}