##' QGIS Algorithm provided by SAGA Next Gen Shalstab (sagang:shalstab). ---------------- Arguments ----------------  A: Slope grid (rad) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B: Catchment area grid (m2) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmin: Min Density grid (g/cm3) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmax: Max Density grid (g/cm3) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmin: Min Hydraulic conductivity grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmax: Max Hydraulic conductivity grid (m/hr)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emin: Min Thickness grid (m) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emax: Max Thickness grid (m) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Fmin: Min Friction angle grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Fmax: Max Friction angle grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Jmin: Min Bulk cohesion grid (MPa)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Jmax: Max Bulk cohesion grid (MPa)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer fCmin: Global minimum density (g/cm3) 	Default value:	1.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fCmax: Global maximum density (g/cm3) 	Default value:	1.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmin: Global minimum conductivity (m/hr) 	Default value:	2.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmax: Global maximum conductivity (m/hr) 	Default value:	2.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmin: Global minimum thickness (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmax: Global maximum thickness (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fFmin: Global minimum friction angle (degree) 	Default value:	33 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fFmax: Global maximum friction angle (degree) 	Default value:	33 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fJmin: Global minimum bulk cohesion (MPa) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fJmax: Global maximum bulk cohesion (MPa) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fK: Parameter sampling runs 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression G: CR values 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer H: CR classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Shalstab
##'
##' @param A `raster` - Slope grid (rad). Path to a raster layer.
##' @param B `raster` - Catchment area grid (m2). Path to a raster layer.
##' @param Cmin `raster` - Min Density grid (g\code{/}cm3). Path to a raster layer.
##' @param Cmax `raster` - Max Density grid (g\code{/}cm3). Path to a raster layer.
##' @param Dmin `raster` - Min Hydraulic conductivity grid (m\code{/}hr) . Path to a raster layer.
##' @param Dmax `raster` - Max Hydraulic conductivity grid (m\code{/}hr) . Path to a raster layer.
##' @param Emin `raster` - Min Thickness grid (m). Path to a raster layer.
##' @param Emax `raster` - Max Thickness grid (m). Path to a raster layer.
##' @param Fmin `raster` - Min Friction angle grid (degree) . Path to a raster layer.
##' @param Fmax `raster` - Max Friction angle grid (degree) . Path to a raster layer.
##' @param Jmin `raster` - Min Bulk cohesion grid (MPa) . Path to a raster layer.
##' @param Jmax `raster` - Max Bulk cohesion grid (MPa) . Path to a raster layer.
##' @param fCmin `number` - Global minimum density (g\code{/}cm3). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fCmax `number` - Global maximum density (g\code{/}cm3). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmin `number` - Global minimum conductivity (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmax `number` - Global maximum conductivity (m\code{/}hr). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmin `number` - Global minimum thickness (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmax `number` - Global maximum thickness (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fFmin `number` - Global minimum friction angle (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fFmax `number` - Global maximum friction angle (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fJmin `number` - Global minimum bulk cohesion (MPa). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fJmax `number` - Global maximum bulk cohesion (MPa). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fK `number` - Parameter sampling runs. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param G `rasterDestination` - CR values. Path for new raster layer.
##' @param H `rasterDestination` - CR classes. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * G - outputRaster - CR values
##' * H - outputRaster - CR classes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_shalstab <- function(A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), Cmin = qgisprocess:::qgis_default_value(), Cmax = qgisprocess:::qgis_default_value(), Dmin = qgisprocess:::qgis_default_value(), Dmax = qgisprocess:::qgis_default_value(), Emin = qgisprocess:::qgis_default_value(), Emax = qgisprocess:::qgis_default_value(), Fmin = qgisprocess:::qgis_default_value(), Fmax = qgisprocess:::qgis_default_value(), Jmin = qgisprocess:::qgis_default_value(), Jmax = qgisprocess:::qgis_default_value(), fCmin = qgisprocess:::qgis_default_value(), fCmax = qgisprocess:::qgis_default_value(), fDmin = qgisprocess:::qgis_default_value(), fDmax = qgisprocess:::qgis_default_value(), fEmin = qgisprocess:::qgis_default_value(), fEmax = qgisprocess:::qgis_default_value(), fFmin = qgisprocess:::qgis_default_value(), fFmax = qgisprocess:::qgis_default_value(), fJmin = qgisprocess:::qgis_default_value(), fJmax = qgisprocess:::qgis_default_value(), fK = qgisprocess:::qgis_default_value(), G = qgisprocess:::qgis_default_value(), H = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:shalstab")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:shalstab", `A` = A, `B` = B, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `Fmin` = Fmin, `Fmax` = Fmax, `Jmin` = Jmin, `Jmax` = Jmax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fFmin` = fFmin, `fFmax` = fFmax, `fJmin` = fJmin, `fJmax` = fJmax, `fK` = fK, `G` = G, `H` = H,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:shalstab", `A` = A, `B` = B, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `Fmin` = Fmin, `Fmax` = Fmax, `Jmin` = Jmin, `Jmax` = Jmax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fFmin` = fFmin, `fFmax` = fFmax, `fJmin` = fJmin, `fJmax` = fJmax, `fK` = fK, `G` = G, `H` = H,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "G")
  }
}