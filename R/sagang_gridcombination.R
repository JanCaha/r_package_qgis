##' QGIS Algorithm provided by SAGA Next Gen Gridcombination (sagang:gridcombination). ---------------- Arguments ----------------  INPUT: Gelaendemodell (DTM) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer Folder1: Pfad WaterGap Raster 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file sY: Start-Jahr 	Default value:	1990 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression eY: End-Jahr 	Default value:	1990 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DomW: Domestic Water 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ElecW: Electricity Water 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LiveW: Livestock Water 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ManW: Manufacturing Water 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IrrW: Irrigation Water 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FvA: Flaechenverbrauch-Auswahl (FvA) 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Resultierendes Raster ueber WasserENTNAHME erstellen 		- 1: (1) Resultierendes Raster ueber WasserNUTZUNG erstellen 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gridcombination
##'
##' @param INPUT `raster` - Gelaendemodell (DTM). Path to a raster layer.
##' @param Folder1 `file` - Pfad WaterGap Raster. Path to a file.
##' @param sY `number` - Start-Jahr. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param eY `number` - End-Jahr. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DomW `boolean` - Domestic Water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ElecW `boolean` - Electricity Water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LiveW `boolean` - Livestock Water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ManW `boolean` - Manufacturing Water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IrrW `boolean` - Irrigation Water. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FvA `enum`  of `("(0) Resultierendes Raster ueber WasserENTNAHME erstellen", "(1) Resultierendes Raster ueber WasserNUTZUNG erstellen")` - Flaechenverbrauch-Auswahl (FvA). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gridcombination <- function(INPUT = qgisprocess:::qgis_default_value(), Folder1 = qgisprocess:::qgis_default_value(), sY = qgisprocess:::qgis_default_value(), eY = qgisprocess:::qgis_default_value(), DomW = qgisprocess:::qgis_default_value(), ElecW = qgisprocess:::qgis_default_value(), LiveW = qgisprocess:::qgis_default_value(), ManW = qgisprocess:::qgis_default_value(), IrrW = qgisprocess:::qgis_default_value(), FvA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gridcombination")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gridcombination", `INPUT` = INPUT, `Folder1` = Folder1, `sY` = sY, `eY` = eY, `DomW` = DomW, `ElecW` = ElecW, `LiveW` = LiveW, `ManW` = ManW, `IrrW` = IrrW, `FvA` = FvA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gridcombination", `INPUT` = INPUT, `Folder1` = Folder1, `sY` = sY, `eY` = eY, `DomW` = DomW, `ElecW` = ElecW, `LiveW` = LiveW, `ManW` = ManW, `IrrW` = IrrW, `FvA` = FvA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}