##' QGIS Algorithm provided by SAGA Next Gen 3d points selection (sagang:3dpointsselection). ---------------- Arguments ----------------  LOWER: Lower Surface 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer UPPER: Upper Surface 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer Z_FIELD: Z 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names COPY: Copy Selection 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - 3d points selection
##'
##' @param LOWER `raster` - Lower Surface. Path to a raster layer.
##' @param UPPER `raster` - Upper Surface. Path to a raster layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param Z_FIELD `field` - Z. The name of an existing field. ; delimited list of existing field names.
##' @param COPY `vectorDestination` - Copy Selection. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COPY - outputVector - Copy Selection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_3dpointsselection <- function(LOWER = qgisprocess:::qgis_default_value(), UPPER = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), Z_FIELD = qgisprocess:::qgis_default_value(), COPY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:3dpointsselection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:3dpointsselection", `LOWER` = LOWER, `UPPER` = UPPER, `POINTS` = POINTS, `Z_FIELD` = Z_FIELD, `COPY` = COPY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:3dpointsselection", `LOWER` = LOWER, `UPPER` = UPPER, `POINTS` = POINTS, `Z_FIELD` = Z_FIELD, `COPY` = COPY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COPY")
  }
}