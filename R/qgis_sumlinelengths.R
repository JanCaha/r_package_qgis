##' QGIS Algorithm provided by QGIS (native c++) Sum line lengths (native:sumlinelengths)
##'
##' @title QGIS algorithm Sum line lengths
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param LEN_FIELD `string` - Lines length field name. String value.
##' @param COUNT_FIELD `string` - Lines count field name. String value.
##' @param OUTPUT `sink` - Line length. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Line length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_sumlinelengths <- function(POLYGONS = qgisprocess::qgis_default_value(), LINES = qgisprocess::qgis_default_value(), LEN_FIELD = qgisprocess::qgis_default_value(), COUNT_FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:sumlinelengths")

  output <- qgisprocess::qgis_run_algorithm("native:sumlinelengths", `POLYGONS` = POLYGONS, `LINES` = LINES, `LEN_FIELD` = LEN_FIELD, `COUNT_FIELD` = COUNT_FIELD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}