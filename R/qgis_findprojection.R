##' QGIS Algorithm provided by QGIS (native c++) Find projection (native:findprojection). Creates a list of possible candidate coordinate reference systems for a layer with an unknown projection. Creates a list of possible candidate coordinate reference systems for a layer with an unknown projection.  The expected area which the layer should reside in must be specified via the target area parameter.  The algorithm operates by testing the layer's extent in every known reference system and listing any in which the bounds would fall within the target area if the layer was in this projection.
##'
##' @title QGIS algorithm - Find projection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TARGET_AREA `extent` - Target area for layer. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param OUTPUT `sink` - CRS candidates. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - CRS candidates
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_findprojection <- function(INPUT = qgisprocess:::qgis_default_value(), TARGET_AREA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:findprojection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:findprojection", `INPUT` = INPUT, `TARGET_AREA` = TARGET_AREA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:findprojection", `INPUT` = INPUT, `TARGET_AREA` = TARGET_AREA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}