#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param Url Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' f2()
#'

#6
Query.6 <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  sinceTransactionID <- Dots$sinceTransactionID

  EpQuery <- paste0("?sinceTransactionID=",sinceTransactionID)
  #  print(EpQuery)
  return(EpQuery)
}

