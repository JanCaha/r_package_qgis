##' QGIS Algorithm provided by SAGA Polar to cartesian coordinates (saga:polartocartesiancoordinates)
##'
##' @title QGIS algorithm Polar to cartesian coordinates
##'
##' @param POLAR `source` - Polar Coordinates. Path to a vector layer.
##' @param F_EXAGG `field` - Exaggeration. The name of an existing field. ; delimited list of existing field names.
##' @param D_EXAGG `number` - Exaggeration Factor. A numeric value.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param DEGREE `boolean` - Degree. 1 for true/yes. 0 for false/no.
##' @param CARTES `vectorDestination` - Cartesian Coordinates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CARTES - outputVector - Cartesian Coordinates
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_polartocartesiancoordinates <- function(POLAR = qgisprocess::qgis_default_value(), F_EXAGG = qgisprocess::qgis_default_value(), D_EXAGG = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), DEGREE = qgisprocess::qgis_default_value(), CARTES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:polartocartesiancoordinates",`POLAR` = POLAR, `F_EXAGG` = F_EXAGG, `D_EXAGG` = D_EXAGG, `RADIUS` = RADIUS, `DEGREE` = DEGREE, `CARTES` = CARTES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CARTES")
  }
}