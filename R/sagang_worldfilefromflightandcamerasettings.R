##' QGIS Algorithm provided by SAGA Next Gen World file from flight and camera settings (sagang:worldfilefromflightandcamerasettings). ---------------- Arguments ----------------  EXTENT: Extent 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILE: World File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file NX: Number of Columns 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NY: Number of Rows 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CFL: Focal Length (mm) 	Default value:	80 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PXSIZE: CCD Physical Pixel Size (micron) 	Default value:	5.2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression X: X 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Y: Y 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression Z: Z 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OMEGA: Omega 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PHI: Phi 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KAPPA: Kappa 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KAPPA_OFF: Offset 	Default value:	90 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ORIENTATION: Orientation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) BLUH 		- 1: (1) PATB 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - World file from flight and camera settings
##'
##' @param EXTENT `vectorDestination` - Extent. Path for new vector layer.
##' @param FILE `file` - World File. Path to a file.
##' @param NX `number` - Number of Columns. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NY `number` - Number of Rows. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CFL `number` - Focal Length (mm). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PXSIZE `number` - CCD Physical Pixel Size (micron). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param X `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Y `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param Z `number` - Z. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OMEGA `number` - Omega. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PHI `number` - Phi. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KAPPA `number` - Kappa. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KAPPA_OFF `number` - Offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ORIENTATION `enum`  of `("(0) BLUH", "(1) PATB")` - Orientation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * EXTENT - outputVector - Extent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_worldfilefromflightandcamerasettings <- function(EXTENT = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), NX = qgisprocess:::qgis_default_value(), NY = qgisprocess:::qgis_default_value(), CFL = qgisprocess:::qgis_default_value(), PXSIZE = qgisprocess:::qgis_default_value(), X = qgisprocess:::qgis_default_value(), Y = qgisprocess:::qgis_default_value(), Z = qgisprocess:::qgis_default_value(), OMEGA = qgisprocess:::qgis_default_value(), PHI = qgisprocess:::qgis_default_value(), KAPPA = qgisprocess:::qgis_default_value(), KAPPA_OFF = qgisprocess:::qgis_default_value(), ORIENTATION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:worldfilefromflightandcamerasettings")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:worldfilefromflightandcamerasettings", `EXTENT` = EXTENT, `FILE` = FILE, `NX` = NX, `NY` = NY, `CFL` = CFL, `PXSIZE` = PXSIZE, `X` = X, `Y` = Y, `Z` = Z, `OMEGA` = OMEGA, `PHI` = PHI, `KAPPA` = KAPPA, `KAPPA_OFF` = KAPPA_OFF, `ORIENTATION` = ORIENTATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:worldfilefromflightandcamerasettings", `EXTENT` = EXTENT, `FILE` = FILE, `NX` = NX, `NY` = NY, `CFL` = CFL, `PXSIZE` = PXSIZE, `X` = X, `Y` = Y, `Z` = Z, `OMEGA` = OMEGA, `PHI` = PHI, `KAPPA` = KAPPA, `KAPPA_OFF` = KAPPA_OFF, `ORIENTATION` = ORIENTATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "EXTENT")
  }
}