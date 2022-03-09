##' QGIS Algorithm provided by SAGA Cut vector layer (saga:cutvectorlayer)
##'
##' @title QGIS algorithm Cut vector layer
##'
##' @param SHAPES `source` - Vector layer to cut. Path to a vector layer.
##' @param METHOD `enum`  of `("[0] completely contained", "[1] intersects", "[2] center")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param POLYGONS_POLYGONS `source` - Cutting polygons. Path to a vector layer.
##' @param CUT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CUT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_cutvectorlayer <- function(SHAPES = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), POLYGONS_POLYGONS = qgisprocess::qgis_default_value(), CUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:cutvectorlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:cutvectorlayer", `SHAPES` = SHAPES, `METHOD` = METHOD, `POLYGONS_POLYGONS` = POLYGONS_POLYGONS, `CUT` = CUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:cutvectorlayer", `SHAPES` = SHAPES, `METHOD` = METHOD, `POLYGONS_POLYGONS` = POLYGONS_POLYGONS, `CUT` = CUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CUT")
  }
}