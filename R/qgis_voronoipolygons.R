##' QGIS Algorithm provided by QGIS Voronoi polygons (qgis:voronoipolygons)
##'
##' @title QGIS algorithm Voronoi polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param BUFFER `number` - Buffer region (% of extent). A numeric value.
##' @param OUTPUT `sink` - Voronoi polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Voronoi polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_voronoipolygons <- function(INPUT = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:voronoipolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:voronoipolygons", `INPUT` = INPUT, `BUFFER` = BUFFER, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:voronoipolygons", `INPUT` = INPUT, `BUFFER` = BUFFER, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}