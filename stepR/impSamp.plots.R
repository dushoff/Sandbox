
load("impSamp.RData")

print(summary(Log_imp_wts))

plot(mv_samps[, 1], mv_samps[, 2])

plot(sample_wt_l, like_wt_l)

plot(mv_samps[, 1], sample_wt_l)
plot(mv_samps[, 1], like_wt_l)
plot(mv_samps[, 1], Log_imp_wts)

plot(mv_samps[, 2], sample_wt_l)
plot(mv_samps[, 2], like_wt_l)
plot(mv_samps[, 2], Log_imp_wts)

print(mean(dat))
print(sd(dat))

