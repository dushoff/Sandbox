library(bbmle)
library(mvtnorm)

## ----sim data
n <- 1e3
set.seed(1126)
dat <- rnorm(n)

## Sampling
samp_size <- 1e3

## ----mle
## Warning, uses global dat
nll <- function(m=0,s=1){
  return(-sum(dnorm(dat,m,s,log=TRUE)))
}

suppressWarnings((mlefit <- mle2(nll)))

vv <- vcov(mlefit)
c <- coef(mlefit)
print(mean(dat))
print(sd(dat))
print(c)

mv_samps <- rmvnorm(samp_size, mean = c, sigma=vv)
print(summary(mv_samps))

## ----imp_wts
like_wt_l <- sapply(1:samp_size,function(x){-nll(mv_samps[x,1], mv_samps[x,2])})

sample_wt_l <- sapply(1:samp_size
  , function(x){dmvnorm(mv_samps[x,]
      , mean = coef(mlefit)
      , sigma=vv
      , log = TRUE
      )
    }
)

Log_imp_wts <- like_wt_l - sample_wt_l
print(summary(Log_imp_wts))

Log_scaled_imp_wts <- Log_imp_wts - max(Log_imp_wts)
print(summary(Log_scaled_imp_wts))

imp_wts <- exp(Log_scaled_imp_wts)
imp_wts <- imp_wts/sum(imp_wts) 
print(summary(imp_wts))


## ----eff_samp------------------------------------------------------------
eff_samp <- 1/sum(imp_wts^2)
print(eff_samp) 

## ----wq------------------------------------------------------------------
wq <- sapply(1:2
  , function(x){Hmisc::wtd.quantile(mv_samps[,x]
    , weights = imp_wts
    , probs = c(0.025, 0.975)
    , normwt = TRUE
    )
  }
)
print(t(wq))
print(confint(mlefit))


