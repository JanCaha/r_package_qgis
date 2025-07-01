##' QGIS Algorithm provided by QGIS (native c++) Raster calculator (native:modelerrastercalc). Performs algebraic operations using raster layers. This algorithm performs algebraic operations using raster layers.
##'
##' @title QGIS algorithm - Raster calculator
##'
##' @param LAYERS `multilayer` - Input layers. .
##' @param EXPRESSION `expression` - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CELL_SIZE `number` - Output cell size (leave empty to set automatically). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS `crs` - Output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param CREATION_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Calculated. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Calculated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_modelerrastercalc <- function(LAYERS = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:modelerrastercalc")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:modelerrastercalc", `LAYERS` = LAYERS, `EXPRESSION` = EXPRESSION, `EXTENT` = EXTENT, `CELL_SIZE` = CELL_SIZE, `CRS` = CRS, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:modelerrastercalc", `LAYERS` = LAYERS, `EXPRESSION` = EXPRESSION, `EXTENT` = EXTENT, `CELL_SIZE` = CELL_SIZE, `CRS` = CRS, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}