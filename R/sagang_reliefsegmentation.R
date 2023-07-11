##' QGIS Algorithm provided by SAGA Next Gen Relief segmentation (sagang:reliefsegmentation). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OBJECTS: Objects 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer BAND_WIDTH: Band Width 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NCLUSTER: Number of Clusters 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Relief segmentation
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param OBJECTS `vectorDestination` - Objects. Path for new vector layer.
##' @param BAND_WIDTH `number` - Band Width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NCLUSTER `number` - Number of Clusters. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OBJECTS - outputVector - Objects
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_reliefsegmentation <- function(ELEVATION = qgisprocess:::qgis_default_value(), OBJECTS = qgisprocess:::qgis_default_value(), BAND_WIDTH = qgisprocess:::qgis_default_value(), NCLUSTER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:reliefsegmentation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:reliefsegmentation", `ELEVATION` = ELEVATION, `OBJECTS` = OBJECTS, `BAND_WIDTH` = BAND_WIDTH, `NCLUSTER` = NCLUSTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:reliefsegmentation", `ELEVATION` = ELEVATION, `OBJECTS` = OBJECTS, `BAND_WIDTH` = BAND_WIDTH, `NCLUSTER` = NCLUSTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OBJECTS")
  }
}