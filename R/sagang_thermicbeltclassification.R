##' QGIS Algorithm provided by SAGA Next Gen Thermic belt classification (sagang:thermicbeltclassification). ---------------- Arguments ----------------  GSL: Growing Season Length 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GST: Mean Temperature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FROST: Frost occurence 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIVAL_TEMP: Minimum Temperature Nival 	Default value:	3.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TREE_TEMP: Minimum Temperature Treeline 	Default value:	6.4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ATB: Thermal Belts 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Thermic belt classification
##'
##' @param GSL `raster` - Growing Season Length. Path to a raster layer.
##' @param GST `raster` - Mean Temperature. Path to a raster layer.
##' @param FROST `raster` - Frost occurence. Path to a raster layer.
##' @param NIVAL_TEMP `number` - Minimum Temperature Nival. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TREE_TEMP `number` - Minimum Temperature Treeline. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ATB `rasterDestination` - Thermal Belts. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ATB - outputRaster - Thermal Belts
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_thermicbeltclassification <- function(GSL = qgisprocess:::qgis_default_value(), GST = qgisprocess:::qgis_default_value(), FROST = qgisprocess:::qgis_default_value(), NIVAL_TEMP = qgisprocess:::qgis_default_value(), TREE_TEMP = qgisprocess:::qgis_default_value(), ATB = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:thermicbeltclassification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:thermicbeltclassification", `GSL` = GSL, `GST` = GST, `FROST` = FROST, `NIVAL_TEMP` = NIVAL_TEMP, `TREE_TEMP` = TREE_TEMP, `ATB` = ATB,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:thermicbeltclassification", `GSL` = GSL, `GST` = GST, `FROST` = FROST, `NIVAL_TEMP` = NIVAL_TEMP, `TREE_TEMP` = TREE_TEMP, `ATB` = ATB,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ATB")
  }
}