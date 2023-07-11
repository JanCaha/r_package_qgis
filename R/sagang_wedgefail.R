##' QGIS Algorithm provided by SAGA Next Gen Wedgefail (sagang:wedgefail). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer C: Dip/Plunge direction grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer D: Dip/Plunge grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emin: Min friction angle grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emax: Max friction angle grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer fC: Global dip/plunge direction (degree) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fD: Global dip/plunge (degree) 	Default value:	35 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmin: Min global friction angle (degree) 	Default value:	35 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmax: Max global friction angle (degree) 	Default value:	35 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ff: Cone radius (degree) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression F: Failures 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer fI: Parameter sampling runs 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Mode 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Slide 		- 1: (1) Topple 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Wedgefail
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param C `raster` - Dip\code{/}Plunge direction grid (degree) . Path to a raster layer.
##' @param D `raster` - Dip\code{/}Plunge grid (degree) . Path to a raster layer.
##' @param Emin `raster` - Min friction angle grid (degree) . Path to a raster layer.
##' @param Emax `raster` - Max friction angle grid (degree) . Path to a raster layer.
##' @param fC `number` - Global dip\code{/}plunge direction (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fD `number` - Global dip\code{/}plunge (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmin `number` - Min global friction angle (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmax `number` - Max global friction angle (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ff `number` - Cone radius (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param F `rasterDestination` - Failures. Path for new raster layer.
##' @param fI `number` - Parameter sampling runs. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) Slide", "(1) Topple")` - Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * F - outputRaster - Failures
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_wedgefail <- function(DEM = qgisprocess:::qgis_default_value(), C = qgisprocess:::qgis_default_value(), D = qgisprocess:::qgis_default_value(), Emin = qgisprocess:::qgis_default_value(), Emax = qgisprocess:::qgis_default_value(), fC = qgisprocess:::qgis_default_value(), fD = qgisprocess:::qgis_default_value(), fEmin = qgisprocess:::qgis_default_value(), fEmax = qgisprocess:::qgis_default_value(), ff = qgisprocess:::qgis_default_value(), F = qgisprocess:::qgis_default_value(), fI = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:wedgefail")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:wedgefail", `DEM` = DEM, `C` = C, `D` = D, `Emin` = Emin, `Emax` = Emax, `fC` = fC, `fD` = fD, `fEmin` = fEmin, `fEmax` = fEmax, `ff` = ff, `F` = F, `fI` = fI, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:wedgefail", `DEM` = DEM, `C` = C, `D` = D, `Emin` = Emin, `Emax` = Emax, `fC` = fC, `fD` = fD, `fEmin` = fEmin, `fEmax` = fEmax, `ff` = ff, `F` = F, `fI` = fI, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "F")
  }
}