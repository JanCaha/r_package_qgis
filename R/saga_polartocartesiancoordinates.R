##' QGIS Algorithm provided by SAGA Polar to cartesian coordinates (saga:polartocartesiancoordinates)
##'
##' @title QGIS algorithm Polar to cartesian coordinates
##'
##' @param POLAR `source` - Polar Coordinates. Path to a vector layer.
##' @param F_EXAGG `field` - Exaggeration. The name of an existing field. ; delimited list of existing field names.
##' @param D_EXAGG `number` - Exaggeration Factor. A numeric value.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param CARTES `vectorDestination` - Cartesian Coordinates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CARTES - outputVector - Cartesian Coordinates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polartocartesiancoordinates <- function(POLAR = qgisprocess::qgis_default_value(), F_EXAGG = qgisprocess::qgis_default_value(), D_EXAGG = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), CARTES = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:polartocartesiancoordinates")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:polartocartesiancoordinates", `POLAR` = POLAR, `F_EXAGG` = F_EXAGG, `D_EXAGG` = D_EXAGG, `RADIUS` = RADIUS, `CARTES` = CARTES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:polartocartesiancoordinates", `POLAR` = POLAR, `F_EXAGG` = F_EXAGG, `D_EXAGG` = D_EXAGG, `RADIUS` = RADIUS, `CARTES` = CARTES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CARTES")
  }
}