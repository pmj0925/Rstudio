install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
displ1 <- mpg %>% filter(displ<=4)
displ1
displ2 <- mpg %>% filter(displ>=5)
displ2
mean(displ1$hwy)
mean(displ2$hwy)

mpg_audi <- mpg %>% filter(manufacturer == "audi")
mpg_toyota <- mpg %>% filter(manufacturer == "toyota")
mean(mpg_audi$cty)
mean(mpg_toyota$cty)

mpg_new <- mpg %>% filter(manufacturer %in% c("chevolet","ford","honda"))
mean(mpg_new$hwy)