#' @importFrom glue glue
#' @importFrom stringr str_match
#' @importFrom utils compareVersion 

check_QGIS_versions <- function(){
  qgis_build <- "3.18.2"
  qgis_local <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]
  if (utils::compareVersion(qgis_local, qgis_build) < 0) {
    message(glue::glue("The QGIS version running localy ({qgis_local}) is older then the QGIS version against which the package was build ({qgis_build})."))
  }
}