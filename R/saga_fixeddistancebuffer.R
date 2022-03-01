##' QGIS Algorithm provided by SAGA Fixed distance buffer (saga:fixeddistancebuffer)
##'
##' @title QGIS algorithm Fixed distance buffer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param DIST_FIELD_DEFAULT `number` - Buffer distance. A numeric value.
##' @param NZONES `number` - Number of Buffer Zones. A numeric value.
##' @param DARC `number` - Arc Vertex Distance (Degree). A numeric value.
##' @param DISSOLVE `boolean` - Dissolve Buffers. 1 for true/yes. 0 for false/no.
##' @param POLY_INNER `boolean` - Inner Buffer. 1 for true/yes. 0 for false/no.
##' @param BUFFER `vectorDestination` - Buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputVector - Buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fixeddistancebuffer <- function(SHAPES = qgisprocess::qgis_default_value(), DIST_FIELD_DEFAULT = qgisprocess::qgis_default_value(), NZONES = qgisprocess::qgis_default_value(), DARC = qgisprocess::qgis_default_value(), DISSOLVE = qgisprocess::qgis_default_value(), POLY_INNER = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fixeddistancebuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fixeddistancebuffer", `SHAPES` = SHAPES, `DIST_FIELD_DEFAULT` = DIST_FIELD_DEFAULT, `NZONES` = NZONES, `DARC` = DARC, `DISSOLVE` = DISSOLVE, `POLY_INNER` = POLY_INNER, `BUFFER` = BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fixeddistancebuffer", `SHAPES` = SHAPES, `DIST_FIELD_DEFAULT` = DIST_FIELD_DEFAULT, `NZONES` = NZONES, `DARC` = DARC, `DISSOLVE` = DISSOLVE, `POLY_INNER` = POLY_INNER, `BUFFER` = BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}