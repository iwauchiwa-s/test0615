# Rパッケージ_Cohen's d & Heges' g_ver.0.0.1

dat <- read.csv(file.choose(), header=T)

m1 <- mean(dat[,2])
m2 <- mean(dat[,3])
n1 <- length(dat[,2])
n2 <- length(dat[,3])
s1 <- sd(dat[,2])
s2 <- sd(dat[,3])

# Cohen's d
Sp <- sqrt(((n1-1)*s1^2 + (n2-1)*s2^2)/(n1+n2))
# 絶対値でのdの出力
d <- sqrt((m1 - m2)^2)/Sp
d

# Hedges' g
sp <- sqrt(((n1-1)*s1^2 + (n2-1)*s2^2)/(n1+n2-2))
# 絶対値でのgの出力
g <- sqrt((m1 - m2)^2)/sp
g
