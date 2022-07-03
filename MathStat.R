# Mathematical Statistics 
# References : 김우철, 수리통계학(2판), "부록 Ⅲ", 민영사, pp.511-528

# 1. Number
abs() 
sqrt() 
exp() 
log() 
log10()
log2()
celing() 
floor()
round(x, digit = y)
  # Elementary functions : 
  # constant, algebraic, rational, power,
  # exponential, logarithmic, trigonometric


# 2. Vector - seq(), c(), rep()
v1 <- seq(from = 1, to = 9, by = 2) 
v2 <- rep(1, times = 5)
v3 <- c(1, 2, 3, 4, 5)
  ## Some useful functions : 
  ## sum(), prod(), max(), min(), var(), cor(), sd(), 
  ## mean(), median(), rev(), scale(), length()


# 3. Matrix - matrix(x, nrow = a, ncol = b, byrow = FALSE or TRUE)
v <- seq(1,12)
m1 <- matrix(v, 3, 4)
m2 <- matrix(v, 4, 3)
m3 <- matrix(v, 4, 3, byrow = TRUE)
  ## Matrix operators : 
  ## +, -, * 
  ## %*% - inner product (or dot product), 
  ## %o% - outer product,
  ## det() - determinant
  ## solve() - inverse matrix, 
  ## t() - transition matrix, 
  ## qr() - QR decomposition, 
  ## svd() - singular value decomposition
  ## diag() - diagonal matrix
  m4 <- matrix(c(2, 3, 2, 3, 5, 3, 1, 6, 8), 3, 3)
  m4
  det(m4)
  t(m4)
  solve(m4)


# 4. Probability Distribution
dnorm(x, mean = a, sd = b) # calculate pdf  
pnorm(x, mean = a, sd = b, lower.tail = ) # calculate cdf 
qnorm(x, mean = a, sd = b, lower.tail = ) # print quantile 
rnorm(x, mean = a, sd = b) # print random numbers 

  ## Other probability distributions : 
  ## binomial, poisson, geometric, 
  ## negative binomial, multinomial, hypergeometric, 
  ## uniform, gamma, beta, t-, chi-square, F-, 
  dbinom(x, size = , p = )
  qbinom(x, size = , p = , lower.tail = )
  qbinom(x, size = , p = , lower.tail = )
  rbinom(x, size = , p = )
  
  dpois(x, lambda = )
  ppois(x, lambda = , lower.tail = )
  qpois(x, lambda = , lower.tail = )
  rpois(x, lambda = )
  
  dgeom(x, p = )
  pgeom(x, p = , lower.tail = )
  qgeom(x, p = , lower.tail = )
  rgeom(x, p = )
  
  dnbinom(x, size = , p = , mu = , log = FALSE)
  pnbinom(x, size = , p = , lower.tail = TRUE)
  qnbinom(x, size = , p = , lower.tail = TRUE)
  rnbinom(x, size = , p = )

  rmultinom(n = , size = , p = )
  dmultinom(x, p = )

  dhyper(x, m, n, k)
  phyper(x, m, n, k, lower.tail = )
  qhyper(x, m, n, k, lower.tail = )
  rhyper(x, m, n, k)
  
  dunif(x, min = , max = , log = FALSE)
  punif(q, min = , max = )
  qunif(p, min = , max = )
  runif(n, min = , max = )
  
  dgamma(x, shape = , scale = )
  pgamma(q, shape = , scale = , lower.tail = TRUE)
  qgamma(p, shape = , scale = , lower.tail = TRUE)
  rgamma(n, shape = , scale = )

  dbeta(x, shape1 = , shape2 = , ncp = a)
  pbeta(q, shape1 = , shape2 = , ncp = a, lower.tail = )
  qbeta(p, shape1 = , shape2 = , ncp = a, lower.tail = )
  rbeta(n, shape1 = , shape2 = , ncp = a)

  dt(x, df, ncp = a)
  pt(q, df, ncp = a, lower.tail = TRUE)
  qt(p, df, ncp = a, lower.tail = TRUE)
  rt(n, df, ncp = a)

  dchisq(x, df, ncp = a)
  pchisq(q, df, ncp = a, lower.tail = TRUE)
  qchisq(p, df, ncp = a, lower.tail = TRUE)
  rchisq(n, df, ncp = a)
  
  df(x, df1, df2, ncp = a)
  pf(x, df1, df2, ncp = a, lower.tail = TRUE)
  qf(x, df1, df2, ncp = a, lower.tail = TRUE)
  rf(x, df1, df2, ncp = a)
  
  dsignrank(x, n, log = FALSE) # library(stat)
  psignrank(q, n, lower.tail = TRUE) # library(stat)
  
  qsignrank(p, n, lower.tail = TRUE) # library(stat)
  rsignrank(nn, n) # library(stat)
  
  
# 5. Producing Graphs of Probability Distribution


## Saved on Jul 3, 2022