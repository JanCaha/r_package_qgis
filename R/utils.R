#' @importFrom glue glue
#' @importFrom stringr str_match
#' @importFrom utils compareVersion

.onLoad <- function(libname, pkgname){

  if (!qgisprocess::has_qgis()) {
    stop("Cannot load package `qgis` because working QGIS installation cannot be found. See help for `qgisprocess::qgis_configure()`!")
  }

  qgis_build <- "3.40.0"

  qgis_local <- stringr::str_match(qgisprocess::qgis_version(), "[0-9.]+[[:cntrl:][:alnum:]]")[,1]

  if (utils::compareVersion(qgis_local, qgis_build) < 0) {
    packageStartupMessage(glue::glue("The QGIS version running localy ({qgis_local}) is older then the QGIS version against which the package was build ({qgis_build}). Errors and inconsistencies may occur! Consider downloading lates stable version of QGIS."))
  }
}

check_algorithm_necessities <- function(alg_name){

  qgisprocess:::assert_qgis()

  provider <- stringr::str_split(alg_name, ":", simplify = TRUE)[1]

  if (!qgisprocess::qgis_has_provider(provider)){
    stop(glue::glue("Error: Can not find specified provider `{provider}` in local QGIS installation."))
  }

  qgisprocess:::assert_qgis_algorithm(alg_name)

}


.message_option <- function(){

  message_option <- getOption("qgis.message")

  if (is.null(message_option)){
    return(FALSE)
  } else {
    if(isFALSE(message_option)){
      return(FALSE)
    }
    else if(isTRUE(message_option)){
      return(TRUE)
    }
  }

  return(FALSE)
}

.quiet_option <- function(){

  quiet_option <- getOption("qgis.quiet")

  if (is.null(quiet_option)){
    return(TRUE)
  } else {
    if(isFALSE(quiet_option)){
      return(FALSE)
    }
    else if(isTRUE(quiet_option)){
      return(TRUE)
    }
  }

  return(TRUE)
}

.complete_output_option <- function(){

  complete_output_option <- getOption("qgis.complete_output")

  if (is.null(complete_output_option)){
    return(TRUE)
  } else {
    if(isFALSE(complete_output_option)){
      return(FALSE)
    }
    else if(isTRUE(complete_output_option)){
      return(TRUE)
    }
  }

  return(TRUE)
}
