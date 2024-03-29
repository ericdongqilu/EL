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
#'

Body.5 <- function(...){
  Dots <- list(...)
  #print(names(Dots))
  #
  marginRate <- as.character(Dots$marginRate)

  #
  EpBody = toJSON(list(
    "marginRate"= marginRate
  ),auto_unbox = T)
  # print(EpBody)
  return(EpBody)
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
#'


#10
Body.10 <- function(...){

  Dots <- list(...)
  #    print(names(Dots))

  #
  Instrument  <- Dots$Instrument
  Units       <- Dots$Units
  TIF         <- Dots$TIF
  type        <- Dots$MarketType
  postionFill <- Dots$PostionFill
  #
  EpBody <- toJSON(list(
    "order"=list(
      "units"= Units,
      "instrument"= Instrument,
      "timeInForce"= TIF,
      "type"= type,
      "positionFill"= postionFill)
  ),auto_unbox = T)
  # print(EpBody)
  return(EpBody)
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
#'

###############
Ep.Body <- function(CEPScode,...) {

  Dots <- list(...)
  #  print(names(Dots))

  EpBody <- switch(as.character(CEPScode),

                   "5"  = Body.5  ( marginRate         = chosenMarginRate),

                   "10" = Body.10 ( Instrument         = chosenInstrument,
                                    Units              = chosenUnits,
                                    TIF                = chosenTIF,
                                    MarketType         = chosenMarketType,
                                    PostionFill        = chosenPostionFill),

                   "26" = Body.26 ( Direction          = chosenDirection,
                                    ClosePositionunits = chosenClosePositionunits),

                   c(("Error"),("Check Body"))#else
  )
  EpBody
}

