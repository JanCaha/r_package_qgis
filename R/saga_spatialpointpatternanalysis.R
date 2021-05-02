##' QGIS Algorithm provided by SAGA Spatial point pattern analysis (saga:spatialpointpatternanalysis)
##'
##' @title QGIS algorithm Spatial point pattern analysis
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param STEP `number` - Vertex Distance (Degree). A numeric value.
##' @param CENTRE `vectorDestination` - Mean Centre. Path for new vector layer.
##' @param STDDIST `vectorDestination` - Standard Distance. Path for new vector layer.
##' @param BBOX `vectorDestination` - Bounding Box. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CENTRE - outputVector - Mean Centre
##' * STDDIST - outputVector - Standard Distance
##' * BBOX - outputVector - Bounding Box
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_spatialpointpatternanalysis <- function(POINTS = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), CENTRE = qgisprocess::qgis_default_value(), STDDIST = qgisprocess::qgis_default_value(), BBOX = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:spatialpointpatternanalysis")
  output <- qgisprocess::qgis_run_algorithm("saga:spatialpointpatternanalysis",`POINTS` = POINTS, `STEP` = STEP, `CENTRE` = CENTRE, `STDDIST` = STDDIST, `BBOX` = BBOX,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CENTRE")
  }
}