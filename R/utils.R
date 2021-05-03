#' @importFrom glue glue
#' @importFrom stringr str_match
#' @importFrom utils compareVersion

.onLoad <- function(libname, pkgname){

  qgis_build <- "3.18.2"

  qgis_local <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]

  if (utils::compareVersion(qgis_local, qgis_build) < 0) {
    packageStartupMessage(glue::glue("The QGIS version running localy ({qgis_local}) is older then the QGIS version against which the package was build ({qgis_build}). Errors and inconsistencies may occur! Consider downloading lates stable version of QGIS."))
  }
}

check_algorithm_necessities <- function(alg_name){

  qgisprocess::assert_qgis()

  qgisprocess::assert_qgis_algorithm(alg_name)
}
