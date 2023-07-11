##' QGIS Algorithm provided by QGIS Raster calculator (qgis:rastercalculator). This algorithm allows performing algebraic operations using raster layers. The resulting layer will have its values computed according to an expression. The expression can contain numerical values, operators and references to any of the layers in the current project. The following functions are also supported: - sin(), cos(), tan(), atan2(), ln(), log10() The extent, cell size, and output CRS can be defined by the user. If the extent is not specified, the minimum extent that covers selected reference layer(s) will be used. If the cell size is not specified, the minimum cell size of selected reference layer(s) will be used. If the output CRS is not specified, the CRS of the first reference layer will be used. The cell size is assumed to be the same in both X and Y axes. Layers are referred by their name as displayed in the layer list and the number of the band to use (based on 1), using the pattern 'layer_name@band number'. For instance, the first band from a layer named DEM will be referred as DEM@1. When using the calculator in the batch interface or from the console, the files to use have to be specified. The corresponding layers are referred using the base name of the file (without the full path). For instance, if using a layer at path/to/my/rasterfile.tif, the first band of that layer will be referred as rasterfile.tif@1.
##'
##' @title QGIS algorithm - Raster calculator
##'
##' @param EXPRESSION `raster_calc_expression` - Expression. .
##' @param LAYERS `multilayer` - Reference layer(s) (used for automated extent, cellsize, and CRS). .
##' @param CELLSIZE `number` - Cell size (use 0 or empty to set it automatically). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param CRS `crs` - Output CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rastercalculator <- function(EXPRESSION = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), CELLSIZE = qgisprocess:::qgis_default_value(), EXTENT = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:rastercalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:rastercalculator", `EXPRESSION` = EXPRESSION, `LAYERS` = LAYERS, `CELLSIZE` = CELLSIZE, `EXTENT` = EXTENT, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:rastercalculator", `EXPRESSION` = EXPRESSION, `LAYERS` = LAYERS, `CELLSIZE` = CELLSIZE, `EXTENT` = EXTENT, `CRS` = CRS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}