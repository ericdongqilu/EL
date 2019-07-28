#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'

SET.TOKEN <- function(...) {
  Dots <- list(...)
  print(names(Dots))

  chosenTOKEN  <<- Dots$SetToken

}
