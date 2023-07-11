##' QGIS Algorithm provided by SAGA Next Gen Shannon index (sagang:shannonindex). ---------------- Arguments ----------------  CATEGORIES: Categories 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COUNT: Number of Categories 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INDEX: Shannon Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer EVENNESS: Evenness 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer KERNEL_TYPE: Kernel Type 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' KERNEL_RADIUS: Radius 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Shannon index
##'
##' @param CATEGORIES `raster` - Categories. Path to a raster layer.
##' @param COUNT `rasterDestination` - Number of Categories. Path for new raster layer.
##' @param INDEX `rasterDestination` - Shannon Index. Path for new raster layer.
##' @param EVENNESS `rasterDestination` - Evenness. Path for new raster layer.
##' @param KERNEL_TYPE `enum`  of `("(0) Square", "(1) Circle")` - Kernel Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param KERNEL_RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COUNT - outputRaster - Number of Categories
##' * EVENNESS - outputRaster - Evenness
##' * INDEX - outputRaster - Shannon Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_shannonindex <- function(CATEGORIES = qgisprocess:::qgis_default_value(), COUNT = qgisprocess:::qgis_default_value(), INDEX = qgisprocess:::qgis_default_value(), EVENNESS = qgisprocess:::qgis_default_value(), KERNEL_TYPE = qgisprocess:::qgis_default_value(), KERNEL_RADIUS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:shannonindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:shannonindex", `CATEGORIES` = CATEGORIES, `COUNT` = COUNT, `INDEX` = INDEX, `EVENNESS` = EVENNESS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:shannonindex", `CATEGORIES` = CATEGORIES, `COUNT` = COUNT, `INDEX` = INDEX, `EVENNESS` = EVENNESS, `KERNEL_TYPE` = KERNEL_TYPE, `KERNEL_RADIUS` = KERNEL_RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COUNT")
  }
}