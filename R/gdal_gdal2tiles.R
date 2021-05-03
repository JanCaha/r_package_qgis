##' QGIS Algorithm provided by GDAL gdal2tiles (gdal:gdal2tiles)
##'
##' @title QGIS algorithm gdal2tiles
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param PROFILE `enum`  of `("Mercator", "Geodetic", "Raster")` - Tile cutting profile. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ZOOM `string` - Zoom levels to render. String value.
##' @param VIEWER `enum`  of `("All", "GoogleMaps", "OpenLayers", "Leaflet", "None")` - Web viewer to generate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TITLE `string` - Title of the map. String value.
##' @param COPYRIGHT `string` - Copyright of the map. String value.
##' @param RESAMPLING `enum`  of `("Average", "Nearest neighbour", "Bilinear", "Cubic", "Cubic spline", "Lanczos windowed sinc", "Antialias")` - Resampling method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SOURCE_CRS `crs` - The spatial reference system used for the source input data. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param NODATA `number` - Transparency value to assign to the input data. A numeric value.
##' @param URL `string` - URL address where the generated tiles are going to be published. String value.
##' @param GOOGLE_KEY `string` - Google Maps API key (http://code.google.com/apis/maps/signup.html). String value.
##' @param BING_KEY `string` - Bing Maps API key (https://www.bingmapsportal.com/). String value.
##' @param RESUME `boolean` - Generate only missing files. 1 for true/yes. 0 for false/no.
##' @param KML `boolean` - Generate KML for Google Earth. 1 for true/yes. 0 for false/no.
##' @param NO_KML `boolean` - Avoid automatic generation of KML files for EPSG:4326. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `folderDestination` - Output directory. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFolder - Output directory
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_gdal2tiles <- function(INPUT = qgisprocess::qgis_default_value(), PROFILE = qgisprocess::qgis_default_value(), ZOOM = qgisprocess::qgis_default_value(), VIEWER = qgisprocess::qgis_default_value(), TITLE = qgisprocess::qgis_default_value(), COPYRIGHT = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), SOURCE_CRS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), URL = qgisprocess::qgis_default_value(), GOOGLE_KEY = qgisprocess::qgis_default_value(), BING_KEY = qgisprocess::qgis_default_value(), RESUME = qgisprocess::qgis_default_value(), KML = qgisprocess::qgis_default_value(), NO_KML = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:gdal2tiles")
  output <- qgisprocess::qgis_run_algorithm("gdal:gdal2tiles",`INPUT` = INPUT, `PROFILE` = PROFILE, `ZOOM` = ZOOM, `VIEWER` = VIEWER, `TITLE` = TITLE, `COPYRIGHT` = COPYRIGHT, `RESAMPLING` = RESAMPLING, `SOURCE_CRS` = SOURCE_CRS, `NODATA` = NODATA, `URL` = URL, `GOOGLE_KEY` = GOOGLE_KEY, `BING_KEY` = BING_KEY, `RESUME` = RESUME, `KML` = KML, `NO_KML` = NO_KML, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}