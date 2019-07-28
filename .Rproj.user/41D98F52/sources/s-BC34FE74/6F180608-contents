#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
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
#'
#'
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
  EpQuery <- list(count=count,
                  price=price,
                  granularity=granularity,
                  from=from,
                  to=to) %>%
    data.frame() %>%
    gather() %>%
    drop_na() %>%
    rowwise() %>%
    mutate(parameter =
             paste(c(key,value),collapse = "=")) %>%
    select(parameter) %>%
    unlist() %>%
    paste(.,collapse = "&") %>%
    paste0("?",.)
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
#'
#'
#'


Query.30 <- function(...){
  Dots <- list(...)
  #  print(names(Dots))
  chosenID <- Dots$chosenID

  EpQuery <-  paste0("?id=",chosenID)
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
#' Query.32()
#'
#'

Query.32 <- function(...){
  Dots <- list(...)
  #  print(names(Dots))
  chosenInstrument<- Dots$chosenInstrument

  EpQuery <- paste0("?instruments=",chosenInstrument)
  #  print(EpQuery)
  return(EpQuery)
}





#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param CEPScode,... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#'
#'
#'

Ep.Query <- function(CEPScode,...) {

  Dots <- list(...)
  #  print(names(Dots))
  #  chosensinceTransactionID <- Dots$chosensinceTransactionID

  EpQuery <- switch(as.character(CEPScode),

                    "6" = Query.6  (sinceTransactionID = chosensinceTransactionID),

                    "7" = Query.7  (chosenCount        = chosenCount,
                                    chosenPrice        = chosenPrice,
                                    chosenGranularity  = chosenGranularity,
                                    chosenFrom         = chosenFrom,
                                    chosenTo           = chosenTo),

                    "30" = Query.30(chosenID=chosenID),

                    "32" = Query.32 (chosenInstrument  = chosenInstrument),

                    c(("Error"),("Check Query"))#else
  )
  EpQuery
}


