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
