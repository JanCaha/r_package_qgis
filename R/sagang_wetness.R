##' QGIS Algorithm provided by SAGA Next Gen Wetness (sagang:wetness). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmin: Min hydraulic conductivity grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmax: Max hydraulic conductivity grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmin: Min groundwater recharge grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmax: Max groundwater recharge grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emin: Min material depth grid (m) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emax: Max material depth grid (m) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer fCmin: Min global material conductivity (m/hr) 	Default value:	2.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fCmax: Max global material conductivity (m/hr) 	Default value:	2.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmin: Min global groundwater recharge (m/hr) 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmax: Max global groundwater recharge (m/hr) 	Default value:	0.001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmin: Min global material depth (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmax: Max global material depth (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fH: Parameter sampling runs 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression F: WI values 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer G: WI classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Catchment Area Calculation 	Default value:	4 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Rho 8 		- 2: (2) Braunschweiger Reliefmodell 		- 3: (3) Deterministic Infinity 		- 4: (4) Multiple Flow Direction 		- 5: (5) Multiple Triangular Flow Directon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PREPROC: Preprocessing 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Wetness
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param Cmin `raster` - Min hydraulic conductivity grid (m\code{/}hr) . Path to a raster layer.
##' @param Cmax `raster` - Max hydraulic conductivity grid (m\code{/}hr) . Path to a raster layer.
##' @param Dmin `raster` - Min groundwater recharge grid (m\code{/}hr) . Path to a raster layer.
##' @param Dmax `raster` - Max groundwater recharge grid (m\code{/}hr) . Path to a raster layer.
##' @param Emin `raster` - Min material depth grid (m). Path to a raster layer.
##' @param Emax `raster` - Max material depth grid (m). Path to a raster layer.
##' @param fCmin `number` - Min global material conductivity (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fCmax `number` - Max global material conductivity (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmin `number` - Min global groundwater recharge (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmax `number` - Max global groundwater recharge (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmin `number` - Min global material depth (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmax `number` - Max global material depth (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fH `number` - Parameter sampling runs. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param F `rasterDestination` - WI values. Path for new raster layer.
##' @param G `rasterDestination` - WI classes. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deterministic 8", "(1) Rho 8", "(2) Braunschweiger Reliefmodell", "(3) Deterministic Infinity", "(4) Multiple Flow Direction", "(5) Multiple Triangular Flow Directon")` - Catchment Area Calculation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PREPROC `boolean` - Preprocessing. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * F - outputRaster - WI values
##' * G - outputRaster - WI classes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_wetness <- function(DEM = qgisprocess:::qgis_default_value(), Cmin = qgisprocess:::qgis_default_value(), Cmax = qgisprocess:::qgis_default_value(), Dmin = qgisprocess:::qgis_default_value(), Dmax = qgisprocess:::qgis_default_value(), Emin = qgisprocess:::qgis_default_value(), Emax = qgisprocess:::qgis_default_value(), fCmin = qgisprocess:::qgis_default_value(), fCmax = qgisprocess:::qgis_default_value(), fDmin = qgisprocess:::qgis_default_value(), fDmax = qgisprocess:::qgis_default_value(), fEmin = qgisprocess:::qgis_default_value(), fEmax = qgisprocess:::qgis_default_value(), fH = qgisprocess:::qgis_default_value(), F = qgisprocess:::qgis_default_value(), G = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), PREPROC = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:wetness")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:wetness", `DEM` = DEM, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fH` = fH, `F` = F, `G` = G, `METHOD` = METHOD, `PREPROC` = PREPROC,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:wetness", `DEM` = DEM, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fH` = fH, `F` = F, `G` = G, `METHOD` = METHOD, `PREPROC` = PREPROC,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "F")
  }
}