library(tercen)
library(dplyr)

psd = function(value, grp){
  vpg = data.frame(value, grp) %>%
    group_by(grp) %>%
    dplyr::summarise(gvar = var(value), gn = length(value)) %>% 
    ungroup() %>% 
    mutate(wvar = (gn-1)* gvar) 

  sqrt( sum(vpg$wvar) /(sum(vpg$gn-1)))
}


ctx = tercenCtx()  
ctx %>% 
  select(.x, .y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(pooled.sd = psd(.y, .x)) %>%
  ctx$addNamespace() %>%
  ctx$save()
