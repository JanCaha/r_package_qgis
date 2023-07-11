remove_new_line <- function(text){
  text <- stringr::str_replace_all(text, "\n", " ")
  text
}
