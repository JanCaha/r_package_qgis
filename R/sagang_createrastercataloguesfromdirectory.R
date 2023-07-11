##' QGIS Algorithm provided by SAGA Next Gen Create raster catalogues from directory (sagang:createrastercataloguesfromdirectory). ---------------- Arguments ----------------  CATALOGUES: Raster Catalogues 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CATALOGUE_GCS: Raster Catalogue 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer CATALOGUE_UKN: Raster Catalogue (unknown CRS) 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIRECTORY: Directory 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file EXTENSIONS: Extensions 	Default value:	sgrd; tif 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) one catalogue for each coordinate system 		- 1: (1) one catalogue using geographic coordinates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Create raster catalogues from directory
##'
##' @param CATALOGUES `vectorDestination` - Raster Catalogues. Path for new vector layer.
##' @param CATALOGUE_GCS `vectorDestination` - Raster Catalogue. Path for new vector layer.
##' @param CATALOGUE_UKN `vectorDestination` - Raster Catalogue (unknown CRS). Path for new vector layer.
##' @param DIRECTORY `file` - Directory. Path to a file.
##' @param EXTENSIONS `string` - Extensions. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `enum`  of `("(0) one catalogue for each coordinate system", "(1) one catalogue using geographic coordinates")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CATALOGUES - outputVector - Raster Catalogues
##' * CATALOGUE_GCS - outputVector - Raster Catalogue
##' * CATALOGUE_UKN - outputVector - Raster Catalogue (unknown CRS)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_createrastercataloguesfromdirectory <- function(CATALOGUES = qgisprocess:::qgis_default_value(), CATALOGUE_GCS = qgisprocess:::qgis_default_value(), CATALOGUE_UKN = qgisprocess:::qgis_default_value(), DIRECTORY = qgisprocess:::qgis_default_value(), EXTENSIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createrastercataloguesfromdirectory")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createrastercataloguesfromdirectory", `CATALOGUES` = CATALOGUES, `CATALOGUE_GCS` = CATALOGUE_GCS, `CATALOGUE_UKN` = CATALOGUE_UKN, `DIRECTORY` = DIRECTORY, `EXTENSIONS` = EXTENSIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createrastercataloguesfromdirectory", `CATALOGUES` = CATALOGUES, `CATALOGUE_GCS` = CATALOGUE_GCS, `CATALOGUE_UKN` = CATALOGUE_UKN, `DIRECTORY` = DIRECTORY, `EXTENSIONS` = EXTENSIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CATALOGUES")
  }
}