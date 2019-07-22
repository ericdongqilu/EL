#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param Url Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' f1()
#'
#' @import httr
#' @import tidyverse
#' @import dplyr
#' @import jsonlite
#' @import ggplot2
#' @import stringr


#f1 <- function(bbbb="3333"){
#  bbbb %>% as.numeric()-> out
#  return(out)
#}

f1 <- function( Url = "https://www1.oanda.com/tools/fxcalculators/fxmath.js"){

  URL <- Url
  r <- GET(url = URL)


  r %>%
    content("text") -> Step1


  DfColNames <- function() {
    VarNameList <- c()
    for (i in 1:5) {
      Step1 %>%
        str_split(";\n",simplify = T)  %>%
        .[1,i] %>%
        str_split("=new Array",simplify = T) %>%
        .[1,1] %>%
        str_remove("var arr") -> VarNameList[i]
    }
    df.1.VarName <<- VarNameList[1:2]
    df.2.VarName <<- VarNameList[3:5]
  }

  DfColNames()


  bind_cols(
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,1] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:alnum:]]+[[:punct:]]+\\.*[[:alnum:]]*",simplify = T)  %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.1.VarName[1])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,2] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.1.VarName[2])
  ) ->> fxmath.df1


  bind_cols(
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,3] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[[:alnum:]]+\\.*[[:alnum:]]*",simplify = T)   %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[1])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,4] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[+-]?[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[2])
    ,
    Step1 %>%
      str_split(";\n",simplify = T)  %>% .[1,5] %>%
      str_split("=new Array",simplify = T) %>% .[1,2] %>%
      str_extract_all("[+-]?[[:digit:]]+\\.*[[:digit:]]*",simplify = T) %>%
      .[1,] %>%
      as_tibble() %>%
      setNames(.,df.2.VarName[3]),
  ) ->> fxmath.df2

}

