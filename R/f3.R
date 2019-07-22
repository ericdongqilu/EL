#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' Query.6 ()
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


#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' Query.7 ()
#'
Query.7 <- function(...){
  Dots <- list(...)
  #print(names(Dots))

  #
  count       = Dots$chosenCount
  price       = Dots$chosenPrice
  granularity = Dots$chosenGranularity
  from        = Dots$chosenFrom
  to          = Dots$chosenTo

  #
#  EpQuery <-
  list(count=count,
                  price=price,
                  granularity=granularity,
                  from=from,
                  to=to) %>%
    data.frame() %>%
    gather() %>%
    drop_na() %>%
    rowwise() %>% print()
#    mutate(parameter =
#             paste(c(key,value),collapse = "=")) %>%
#    select(parameter) %>%
#    unlist() %>%
#    paste(.,collapse = "&") %>%
#    paste0("?",.)
  # print(EpQuery)
#  return(EpQuery)

}

