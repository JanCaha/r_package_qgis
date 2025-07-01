##' QGIS Algorithm provided by QGIS (native c++) Geometry by expression (native:geometrybyexpression). Updates existing geometries (or creates new geometries) for input features by use of a QGIS expression. This algorithm updates existing geometries (or creates new geometries) for input features by use of a QGIS expression. This allows complex geometry modifications which can utilize all the flexibility of the QGIS expression engine to manipulate and create geometries for output features.  For help with QGIS expression functions, see the inbuilt help for specific functions which is available in the expression builder.
##'
##' @title QGIS algorithm - Geometry by expression
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT_GEOMETRY `enum`  of `("Polygon", "Line", "Point")` - Output geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WITH_Z `boolean` - Output geometry has z dimension. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param WITH_M `boolean` - Output geometry has m values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPRESSION `expression` - Geometry expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Modified geometry. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Modified geometry
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_geometrybyexpression <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT_GEOMETRY = qgisprocess:::qgis_default_value(), WITH_Z = qgisprocess:::qgis_default_value(), WITH_M = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:geometrybyexpression")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:geometrybyexpression", `INPUT` = INPUT, `OUTPUT_GEOMETRY` = OUTPUT_GEOMETRY, `WITH_Z` = WITH_Z, `WITH_M` = WITH_M, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:geometrybyexpression", `INPUT` = INPUT, `OUTPUT_GEOMETRY` = OUTPUT_GEOMETRY, `WITH_Z` = WITH_Z, `WITH_M` = WITH_M, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}