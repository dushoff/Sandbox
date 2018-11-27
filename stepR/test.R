# stepSource artemis.rda
source("defs.R")
load("add.RData")
print(x)
print(y)
pdf("sin.pdf")
curve(x^2*sin(x))

save(x, file="eggplant.rda")
