##' QGIS Algorithm provided by SAGA Next Gen Safetyfactor (sagang:safetyfactor). ---------------- Arguments ----------------  A: Slope grid (rad) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Bmin: Min thickness grid (m)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Bmax: Max thickness grid (m)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmin: Min saturation grid (-)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Cmax: Max saturation grid (-)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmin: Min friction grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Dmax: Max friction grid (degree)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emin: Min density grid (g/cm3) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Emax: Max density grid (g/cm3) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Fmin: Min cohesion grid (MPa)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Fmax: Max cohesion grid (MPa)  (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer fBmin: Min global thickness (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fBmax: Max global thickness (m) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fCmin: Min global saturation (-) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fCmax: Max global saturation (-) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmin: Min global friction (degree) 	Default value:	33 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fDmax: Max global friction (degree) 	Default value:	33 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmin: Min global density (g/cm3) 	Default value:	1.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fEmax: Max global density (g/cm3) 	Default value:	1.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fFmin: Min global cohesion (MPa) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fFmax: Max global cohesion (MPa) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression fI: Parameter sampling runs 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression G: FS values 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer H: FS classes 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Safetyfactor
##'
##' @param A `raster` - Slope grid (rad). Path to a raster layer.
##' @param Bmin `raster` - Min thickness grid (m) . Path to a raster layer.
##' @param Bmax `raster` - Max thickness grid (m) . Path to a raster layer.
##' @param Cmin `raster` - Min saturation grid (-) . Path to a raster layer.
##' @param Cmax `raster` - Max saturation grid (-) . Path to a raster layer.
##' @param Dmin `raster` - Min friction grid (degree) . Path to a raster layer.
##' @param Dmax `raster` - Max friction grid (degree) . Path to a raster layer.
##' @param Emin `raster` - Min density grid (g\code{/}cm3). Path to a raster layer.
##' @param Emax `raster` - Max density grid (g\code{/}cm3). Path to a raster layer.
##' @param Fmin `raster` - Min cohesion grid (MPa) . Path to a raster layer.
##' @param Fmax `raster` - Max cohesion grid (MPa) . Path to a raster layer.
##' @param fBmin `number` - Min global thickness (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fBmax `number` - Max global thickness (m). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fCmin `number` - Min global saturation (-). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fCmax `number` - Max global saturation (-). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmin `number` - Min global friction (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fDmax `number` - Max global friction (degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmin `number` - Min global density (g\code{/}cm3). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fEmax `number` - Max global density (g\code{/}cm3). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fFmin `number` - Min global cohesion (MPa). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fFmax `number` - Max global cohesion (MPa). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param fI `number` - Parameter sampling runs. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param G `rasterDestination` - FS values. Path for new raster layer.
##' @param H `rasterDestination` - FS classes. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * G - outputRaster - FS values
##' * H - outputRaster - FS classes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_safetyfactor <- function(A = qgisprocess:::qgis_default_value(), Bmin = qgisprocess:::qgis_default_value(), Bmax = qgisprocess:::qgis_default_value(), Cmin = qgisprocess:::qgis_default_value(), Cmax = qgisprocess:::qgis_default_value(), Dmin = qgisprocess:::qgis_default_value(), Dmax = qgisprocess:::qgis_default_value(), Emin = qgisprocess:::qgis_default_value(), Emax = qgisprocess:::qgis_default_value(), Fmin = qgisprocess:::qgis_default_value(), Fmax = qgisprocess:::qgis_default_value(), fBmin = qgisprocess:::qgis_default_value(), fBmax = qgisprocess:::qgis_default_value(), fCmin = qgisprocess:::qgis_default_value(), fCmax = qgisprocess:::qgis_default_value(), fDmin = qgisprocess:::qgis_default_value(), fDmax = qgisprocess:::qgis_default_value(), fEmin = qgisprocess:::qgis_default_value(), fEmax = qgisprocess:::qgis_default_value(), fFmin = qgisprocess:::qgis_default_value(), fFmax = qgisprocess:::qgis_default_value(), fI = qgisprocess:::qgis_default_value(), G = qgisprocess:::qgis_default_value(), H = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:safetyfactor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:safetyfactor", `A` = A, `Bmin` = Bmin, `Bmax` = Bmax, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `Fmin` = Fmin, `Fmax` = Fmax, `fBmin` = fBmin, `fBmax` = fBmax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fFmin` = fFmin, `fFmax` = fFmax, `fI` = fI, `G` = G, `H` = H,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:safetyfactor", `A` = A, `Bmin` = Bmin, `Bmax` = Bmax, `Cmin` = Cmin, `Cmax` = Cmax, `Dmin` = Dmin, `Dmax` = Dmax, `Emin` = Emin, `Emax` = Emax, `Fmin` = Fmin, `Fmax` = Fmax, `fBmin` = fBmin, `fBmax` = fBmax, `fCmin` = fCmin, `fCmax` = fCmax, `fDmin` = fDmin, `fDmax` = fDmax, `fEmin` = fEmin, `fEmax` = fEmax, `fFmin` = fFmin, `fFmax` = fFmax, `fI` = fI, `G` = G, `H` = H,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "G")
  }
}