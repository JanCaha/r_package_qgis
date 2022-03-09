file_text <- function(x){
  purrr::map_chr(x, function(x){
    if (fs::is_file(x)) {
      readr::read_file(x)
    } else {
      dir <- fs::dir_info("R")
      glue::glue_collapse(dir$path, sep = ",")
    }
  })
}
