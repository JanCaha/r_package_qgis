##' QGIS Algorithm provided by GRASS i.smap (grass7:i.smap)
##'
##' @title QGIS algorithm i.smap
##'
##' @param input `multilayer` - Input rasters. .
##' @param signaturefile `file` - Name of input file containing signatures. Path to a file.
##' @param blocksize `number` - Size of submatrix to process at one time. A numeric value.
##' @param .m `boolean` - Use maximum likelihood estimation (instead of smap). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -m.
##' @param output `rasterDestination` - Classification. Path for new raster layer.
##' @param goodness `rasterDestination` - Goodness_of_fit. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * goodness - outputRaster - Goodness_of_fit
##' * output - outputRaster - Classification
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_smap <- function(input = qgisprocess::qgis_default_value(), signaturefile = qgisprocess::qgis_default_value(), blocksize = qgisprocess::qgis_default_value(), .m = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), goodness = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.smap")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.smap", `input` = input, `signaturefile` = signaturefile, `blocksize` = blocksize, `-m` = .m, `output` = output, `goodness` = goodness, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "goodness")
  }
}