#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param ... Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' Body.26()
#'
#'
#'


Body.26 <- function(CEPScode,...) {

  Dots <- list(...)
  # print(names(Dots))
  Direction          <- Dots$Direction
  ClosePositionunits <- as.character(Dots$ClosePositionunits)

  #Sub long
  Body.26.long <- function(...){
    Dots <- list(...)
    #    print(names(Dots))
    #
    ClosePositionunits <- as.character(Dots$ClosePositionunits)
    #
    EpBody = toJSON(list(
      "longUnits" = ClosePositionunits
    ),auto_unbox = T)
    #  print(EpBody)
    return(EpBody)
  }

  #Body.26.long(ClosePositionunits=chosenClosePositionunits)

  #Sub short
  Body.26.short <- function(...){
    Dots <- list(...)
    #    print(names(Dots))
    #
    ClosePositionunits <- as.character(Dots$ClosePositionunits)
    #
    EpBody <- toJSON(list(
      "shortUnits" = ClosePositionunits
    ),auto_unbox = T)
    # print(EpBody)
    return(EpBody)
  }

  #Body.26.short(ClosePositionunits=chosenClosePositionunits)

  #
  EpBody <- switch(Direction,

                   "long"   = Body.26.long(ClosePositionunits  = ClosePositionunits),

                   "short"  = Body.26.short(ClosePositionunits = ClosePositionunits),


                   c(("Error"),("Check Body.26 Direction"))#else
  )
  return(EpBody)
}

